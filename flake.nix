{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";

    typst = {
      url = "github:typst/typst-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, flake-utils, typst, ... } @ inputs: let
    inherit (flake-utils.lib) system;
    systems = [ system.x86_64-linux ];

  in flake-utils.lib.eachSystem systems (system: let
    pkgs = import nixpkgs { inherit system;
      config.allowUnfree = true;
    };

  in {
    # `nix develop`
    devShells.default = pkgs.mkShell {
      packages = [
        (typst.packages.${system}.default)
      ];
    };
  });
}
