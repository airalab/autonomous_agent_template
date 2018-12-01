{ stdenv
, ros_comm
, mkRosPackage
, python3Packages
, pkgs ? import <nixpkgs> {}
}:

mkRosPackage rec {
  name = "${pname}-${version}";
  pname = "dummy_aira";
  version = "master";

  src = ./.;

  propagatedBuildInputs = with python3Packages;
  [ ros_comm web3 multihash voluptuous ipfsapi python-persistent-queue pkgs.robonomics_comm ];

  meta = with stdenv.lib; {
    description = "Robonomics communication stack";
    homepage = http://github.com/airalab/robonomics_comm;
    license = licenses.bsd3;
    maintainers = [ maintainers.akru ];
  };
}
