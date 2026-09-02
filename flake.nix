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
    pkgs = import nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };

    fonts = with pkgs; [
      corefonts
    ];
  in {
    # `nix develop`
    devShells.default = pkgs.mkShell {
      packages = with pkgs; [
        (typst.packages.${system}.default)
      ] ++ fonts;

      TYPST_FONT_PATHS = builtins.concatStringsSep
        ":"
        (map (font: "${font}/share/fonts/truetype") fonts);
    };
  });
}
