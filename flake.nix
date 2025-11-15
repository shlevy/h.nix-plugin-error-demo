{
  inputs.haskellNix.url = "github:input-output-hk/haskell.nix?rev=a9aed48e294cb85b8dcb6de3ba007a383bf2cabc";
  inputs.nixpkgs.follows = "haskellNix/nixpkgs-unstable";
  outputs = { haskellNix, nixpkgs, self }: {
    legacyPackages.aarch64-linux = let
      pkgs = import nixpkgs {
        system = "aarch64-linux";
        overlays = [ haskellNix.overlay ];
      };

      inherit (pkgs.haskell-nix) cabalProject' stackProject';

      cabalProj = cabalProject' {
        compiler-nix-name = "ghc9102";
        src = ./.;
      };
      stackProj = stackProject' {
        src = ./.;
        modules = [ {
          packages.unix.components.library.configureFlags = [ "-fos-string" ];
          packages.directory.components.library.configureFlags = [ "-fos-string" ];
        } ];
      };
    in {
      cabalLib = cabalProj.hsPkgs.lib.components.library;
      stackLib = stackProj.hsPkgs.lib.components.library;
    };
  };
  nixConfig = {
    extra-substituters = ["https://cache.iog.io"];
    extra-trusted-public-keys = ["hydra.iohk.io:f/Ea+s+dFdN+3Y/G+FDgSq+a5NEWhJGzdjvKNGv0/EQ="];
    allow-import-from-derivation = "true";
  };
}
