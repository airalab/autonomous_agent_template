{ rev    ? "6c60a1afef0b88cf6fb47e4db6449a0a6fe30db1"             # The Git revision of nixpkgs to fetch
, sha256 ? "0nx8wqkhw6wpyb934svh53gb1ads23ilwl8kvzwz1q959m01k303" # The SHA256 of the downloaded data
}:

builtins.fetchTarball {
  url = "https://github.com/airalab/airapkgs/archive/${rev}.tar.gz";
  inherit sha256;
}
