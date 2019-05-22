{ rev    ? "5aeb9f429b67a77c8d0bce4d3f8da79b0fb05210"             # The Git revision of nixpkgs to fetch
, sha256 ? "0w20mwl4n25wq8xkz0b7msm2rbnvly4012s54rs6wxfs6ps9b2nk" # The SHA256 of the downloaded data
}:

builtins.fetchTarball {
  url = "https://github.com/airalab/airapkgs/archive/${rev}.tar.gz";
  inherit sha256;
}
