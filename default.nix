{ stdenv, pkgs }:

with stdenv.lib;

let basePythonPackages = pkgs.python34Packages;
    myPythonPackages = basePythonPackages.override (a: {
      self = myPythonPackages;
    })
    // (scopedImport {
      self = myPythonPackages;
      super = basePythonPackages;
      inherit pkgs;
      inherit (pkgs) fetchurl;
    } ./python-packages.nix)
    // { inherit (basePythonPackages) pip; };

in myPythonPackages.buildPythonPackage {
  name = "what.fm";
  version = "0.0.1";
  buildInputs = with myPythonPackages; [
    flask
  ];
}
