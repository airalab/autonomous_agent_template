{ rev    ? "880a6d865280ecf2fa1d4b883e3b6e27911148c4"             # The Git revision of nixpkgs to fetch
, sha256 ? "13g10v3nz8i4ixmiqnx2rmxpdpx62l86kl6i64986arnnn39p4jk" # The SHA256 of the downloaded data
}:

builtins.fetchTarball {
  url = "https://github.com/airalab/airapkgs/archive/${rev}.tar.gz";
  inherit sha256;
}
