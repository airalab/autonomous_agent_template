{ rev    ? "43b2f1513f486d969debcc49730a59c72f3c2625"             # The Git revision of nixpkgs to fetch
, sha256 ? "0zp4qq8affq45bmsf3yfkddf4x7rcprll927k9aih656pz80mpwb" # The SHA256 of the downloaded data
}:

builtins.fetchTarball {
  url = "https://github.com/airalab/airapkgs/archive/${rev}.tar.gz";
  inherit sha256;
}
