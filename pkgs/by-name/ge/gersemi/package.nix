{
  lib,
  python3Packages,
  fetchFromGitHub,
}:

python3Packages.buildPythonApplication rec {
  pname = "gersemi";
  version = "0.15.0";

  src = fetchFromGitHub {
    owner = "BlankSpruce";
    repo = "gersemi";
    rev = version;
    hash = "sha256-XVJKKHrIM5187ze5xXCIRpELQVTETOpbD4qkVL6acKo=";
  };

  propagatedBuildInputs = with python3Packages; [
    appdirs
    colorama
    lark
    pyyaml
  ];

  meta = {
    description = "A formatter to make your CMake code the real treasure";
    homepage = "https://github.com/BlankSpruce/gersemi";
    license = lib.licenses.mpl20;
    platforms = lib.platforms.all;
    maintainers = with lib.maintainers; [ xeals ];
  };
}
