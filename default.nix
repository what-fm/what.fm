{ stdenv, pkgs, basePythonPackages ? pkgs.python34Packages
, srcRoot ? ./.
}:

with stdenv.lib;

let
  localPythonPackages = basePythonPackages.override (a: {
    self = localPythonPackages;
  })
  // (scopedImport {
    self = localPythonPackages;
    super = basePythonPackages;
    inherit pkgs;
    inherit (pkgs) fetchurl;
  } ./generated/python-packages.nix)
  // { inherit (basePythonPackages) pip; };

  myPythonPackages = localPythonPackages // localOverrides localPythonPackages;

  bowerComponents = pkgs.buildBowerComponents {
    inherit (myPythonPackages.what.fm) name;
    src = pkgs.writeTextDir "bower.json" (builtins.readFile ./bower.json);
    generated = ./generated/bower-packages.nix;
  };

  localOverrides = pythonPackages: {
    what.fm = pythonPackages.what.fm.override (attrs: {
      buildInputs = attrs.buildInputs
        ++ optionals inNixShell (devTools pythonPackages)
        ++ [ pkgs.sass ];
      postShellHook = ''
        ln -sfv ${bowerComponents}/bower_components what/fm/
      '';
      preBuild = ''
        cp --reflink=auto --no-preserve=mode -R ${bowerComponents}/bower_components what/fm/
        ${basePythonPackages.python.interpreter} manage.py assets build
      '';
      src = srcRoot;
      postFixup = ''
        wrapPythonPrograms
        wrapProgram $out/bin/unicorn --set PYTHONPATH "$PYTHONPATH" --set PATH "$PATH"
      '';
    });
  };

  devTools = pythonPackages: [
    # for linting
    pythonPackages.flake8

    # working with bower
    pkgs.nodePackages.bower pkgs.nodePackages.bower2nix
  ];

in myPythonPackages.what.fm
