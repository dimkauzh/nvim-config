{
  description = "nvim-config package";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, nixpkgs }: 
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs { inherit system; };
  in {
    packages.${system} = {
      default = pkgs.stdenv.mkDerivation {
        pname = "nvim-config";
        version = "1.0.0";

        src = ./.;

        buildInputs = [ ];

        preConfigure = ''
          mkdir -p $out/nvim
        '';

        installPhase = ''
          cp -r $src/ $out/nvim
        '';
      };

      dev = pkgs.writeShellScriptBin "default" ''
        nvim -u ./init.lua
      '';
    };
  };
}

