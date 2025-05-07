{
  description = "nvim-config package";
  
  inputs = {
    nixpkgs.url = "nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
  flake-utils.lib.eachDefaultSystem (system:
  let
    pkgs = import nixpkgs { inherit system; };
  in {
    packages = {
      default = pkgs.stdenv.mkDerivation {
        pname = "nvim-config";
        version = "1.0.0";

        src = ./.;

        buildInputs = [ ];

        preConfigure = ''
          mkdir -p $out/nvim
        '';

        installPhase = ''
          cp -r $src/* $out/nvim
        '';
      };
    };
  });
}

