{
  lib,
  python3Packages,
  fetchFromGitHub,
}:

python3Packages.buildPythonApplication rec {
  pname = "gersemi";
  version = "0.16.0";

  src = fetchFromGitHub {
    owner = "BlankSpruce";
    repo = "gersemi";
    rev = version;
    hash = "sha256-lHVQVbnWy6w5PUVN922HBxizxZcxJoy2MbWk/3qbO/4=";
  };

  propagatedBuildInputs = with python3Packages; [
    appdirs
    colorama
    lark
    pyyaml
  ];

  meta = {
    description = "Formatter to make your CMake code the real treasure";
    homepage = "https://github.com/BlankSpruce/gersemi";
    license = lib.licenses.mpl20;
    maintainers = with lib.maintainers; [ xeals ];
    mainProgram = "gersemi";
  };
}
