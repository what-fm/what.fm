{ src ? ./.
, supportedSystems ? [ "x86_64-linux" "x86_64-darwin" ]
, supportedPythons ? [ "32" "33" "34" "35" ]
}:

let inherit ((import <nixpkgs> {})) pkgs;
    inherit (pkgs.lib) genAttrs;

in rec {
  tarball = pkgs.releaseTools.sourceTarball rec {
    name = "what.fm";
    version = "0.0.1";
    inherit src;
    buildInputs = [ pkgs.git ];

    postUnpack = ''
      # Clean up when building from a working tree.
      if [[ -d $sourceRoot/.git ]]; then
        git -C $sourceRoot clean -fdx -e important-secret
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
        src = "${tarball}/tarballs/*.tar.bz2";
      }
    )
  );
}
