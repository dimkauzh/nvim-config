{
  description = "A Nixvim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    nixvim.url = "github:nix-community/nixvim";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs =
    { nixvim, flake-parts, ... }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "aarch64-darwin"
      ];

      perSystem =
        { system, ... }:
        let
          pkgs = import inputs.nixpkgs {
            inherit system;
            config.allowUnfree = true;
          };

          configuration = nixvim.lib.evalNixvim {
            inherit system;

            modules = [ 
              ./config 
              { _module.args.pkgs = inputs.nixpkgs.lib.mkForce pkgs; }
            ];
            extraSpecialArgs = {};
          };
        in
        {
          checks.default = configuration.config.build.test;
          packages.default = configuration.config.build.package;
        };
    };
}
