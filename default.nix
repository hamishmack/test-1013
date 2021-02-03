let
  sources = import nix/sources.nix {};
  haskellNix = import sources."haskell.nix" {};
  pkgs = import haskellNix.sources.nixpkgs haskellNix.nixpkgsArgs;
in pkgs.haskell-nix.project {
    compiler-nix-name = "ghc8103";
    # src = ./.;
    src = pkgs.haskell-nix.haskellLib.cleanGit { name = "test-1013"; src = ./.; };
  }
