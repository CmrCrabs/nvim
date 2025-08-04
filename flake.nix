{
  description = "Neovim Nightly with custom config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
    neovim-nightly.url = "github:nix-community/neovim-nightly-overlay";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, neovim-nightly, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { 
					inherit system; 
					overlays = [
            neovim-nightly.overlays.default
					];
				};

				#storedConfig = pkgs.runCommand "stored-nvim-config" {
				#		buildInputs = [ ];
        #  } ''
        #    mkdir -p $out/nvim
        #    cp -r ${./config/nvim}/* $out/
				#'';

        nnvimWrapped = pkgs.writeShellApplication {
          name = "nnvim";
          runtimeInputs = [ pkgs.neovim ];
          text = ''
            export XDG_CONFIG_HOME="./config"
            exec nvim "$@"
          '';
        };

      in {
        packages.default = nnvimWrapped;
				apps.default = {
          type = "app";
          program = "${nnvimWrapped}/bin/nnvim";
        };
      });
}
