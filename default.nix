let
  sources = import nix/sources.nix {};
  haskellNix = import sources."haskell.nix" {};
  pkgs = import haskellNix.sources.nixpkgs-unstable haskellNix.nixpkgsArgs;
in pkgs.haskell-nix.stackProject {
    # compiler-nix-name = "ghc8104";
    # src = ./.;
    src = pkgs.haskell-nix.haskellLib.cleanGit { name = "test-1013"; src = ./.; };
  } // { inherit pkgs; }
