{
  Flask = super.buildPythonPackage {
    name = "Flask-0.10.1";
    buildInputs = with self; [];
    doCheck = false;
    propagatedBuildInputs = with self; [Werkzeug Jinja2 itsdangerous];
    src = fetchurl {
      url = "https://pypi.python.org/packages/db/9c/149ba60c47d107f85fe52564133348458f093dd5e6b57a5b60ab9ac517bb/Flask-0.10.1.tar.gz";
      md5 = "378670fe456957eb3c27ddaef60b2b24";
    };
  };
  Jinja2 = super.buildPythonPackage {
    name = "Jinja2-2.8";
    buildInputs = with self; [];
    doCheck = false;
    propagatedBuildInputs = with self; [MarkupSafe];
    src = fetchurl {
      url = "https://pypi.python.org/packages/f2/2f/0b98b06a345a761bec91a079ccae392d282690c2d8272e708f4d10829e22/Jinja2-2.8.tar.gz";
      md5 = "edb51693fe22c53cee5403775c71a99e";
    };
  };
  MarkupSafe = super.buildPythonPackage {
    name = "MarkupSafe-0.23";
    buildInputs = with self; [];
    doCheck = false;
    propagatedBuildInputs = with self; [];
    src = fetchurl {
      url = "https://pypi.python.org/packages/c0/41/bae1254e0396c0cc8cf1751cb7d9afc90a602353695af5952530482c963f/MarkupSafe-0.23.tar.gz";
      md5 = "f5ab3deee4c37cd6a922fb81e730da6e";
    };
  };
  Werkzeug = super.buildPythonPackage {
    name = "Werkzeug-0.11.9";
    buildInputs = with self; [];
    doCheck = false;
    propagatedBuildInputs = with self; [];
    src = fetchurl {
      url = "https://pypi.python.org/packages/0f/7c/b316cd9779817173e93f5cebc8fb387db33cc8dc526f3db5e61f2c008d5b/Werkzeug-0.11.9.tar.gz";
      md5 = "e4dbeb6302ce74babc0d7c21fc3d8291";
    };
  };
  itsdangerous = super.buildPythonPackage {
    name = "itsdangerous-0.24";
    buildInputs = with self; [];
    doCheck = false;
    propagatedBuildInputs = with self; [];
    src = fetchurl {
      url = "https://pypi.python.org/packages/dc/b4/a60bcdba945c00f6d608d8975131ab3f25b22f2bcfe1dab221165194b2d4/itsdangerous-0.24.tar.gz";
      md5 = "a3d55aa79369aef5345c036a8a26307f";
    };
  };
  what.fm = super.buildPythonPackage {
    name = "what.fm-0.0.1";
    buildInputs = with self; [];
    doCheck = false;
    propagatedBuildInputs = with self; [Flask];
    src = ./.;
  };

### Test requirements

  
}
