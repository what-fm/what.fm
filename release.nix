{ src ? ./.
, supportedSystems ? [ "x86_64-linux" "i686-linux" ]
, supportedPythons ? [ "32" "33" "34" "35" ]
}:

let myPkgs = import <nixpkgs> {};
    inherit (myPkgs.lib) genAttrs;

in rec {
  tarball = myPkgs.releaseTools.sourceTarball rec {
    name = "what.fm";
    version = "0.0.1";
    inherit src;
    buildInputs = [ myPkgs.git ];

    postUnpack = ''
      # Clean up when building from a working tree.
      if [[ -d $sourceRoot/.git ]]; then
        git -C $sourceRoot clean -fdx
      fi
    '';

    distPhase = ''
      tar cfj tarball.tar.bz2 * --transform 's,^,${name}/,'
      mkdir -p $out/tarballs
      cp *.tar.* $out/tarballs
    '';
  };

  build = genAttrs supportedSystems (system:
    genAttrs (map (x: "python${x}") supportedPythons) (py:
      with import <nixpkgs> { inherit system; };

      pkgs.callPackage ./. {
        basePythonPackages = pkgs."${py}Packages";
        srcRoot = "${tarball}/tarballs/*.tar.bz2";
      }
    )
  );
}
