{ stdenv
, mkRosPackage
, robonomics_comm
, python3Packages
}:

mkRosPackage rec {
  name = "${pname}-${version}";
  pname = "autonomous_agent_template";
  version = "master";

  src = ./.;

  propagatedBuildInputs = [ robonomics_comm python3Packages.pyyaml ];

  meta = with stdenv.lib; {
    description = "Simple modular AIRA example effort";
    homepage = http://github.com/airalab/autonomous_agent_template;
    license = licenses.bsd3;
    maintainers = with maintainers; [ vourhey ];
  };
}
