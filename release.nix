{ nixpkgs ? import ./fetchNixpkgs.nix { } }:

rec {
  nix.useSandbox = false;
  dummy_aira = nixpkgs.callPackage ./default.nix { };
}
