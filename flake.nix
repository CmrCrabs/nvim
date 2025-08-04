{
  description = "Neovim Nightly with custom config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
    neovim-nightly.url = "github:nix-community/neovim-nightly-overlay";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    self,
    nixpkgs,
    neovim-nightly,
    flake-utils,
    ...
  }:
  # flake-utils.lib.eachDefaultSystem (system:
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
      overlays = [
        neovim-nightly.overlays.default
      ];
    };

    tempDir =
      pkgs.runCommand "initFolder" {
      } ''
        mkdir -p $out
             cp -r ${self}/config/nvim $out/
      '';

    nvimWrap = pkgs.writeShellApplication {
      name = "nvimWrap";
      runtimeInputs = [pkgs.neovim];
      text = ''
        exec nvim -u ${tempDir}/nvim/init.lua
      '';
    };
  in {
    packages.${system}.default = nvimWrap;
  };
}
