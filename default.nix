{ stdenv, pkgs }:

with stdenv.lib;

let basePythonPackages = pkgs.python34Packages;

    localOverrides = pythonPackages: {
      what.fm = pythonPackages.what.fm.override (attrs: {
        buildInputs = optional inNixShell basePythonPackages.flake8
          ++ attrs.buildInputs;
      });
    };

    localPythonPackages = basePythonPackages.override (a: {
      self = localPythonPackages;
    })
    // (scopedImport {
      self = localPythonPackages;
      super = basePythonPackages;
      inherit pkgs;
      inherit (pkgs) fetchurl;
    } ./python-packages.nix)
    // { inherit (basePythonPackages) pip; };

    myPythonPackages = localPythonPackages // localOverrides localPythonPackages;

in myPythonPackages.what.fm
