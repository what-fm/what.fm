{
  Flask = super.buildPythonPackage {
    name = "Flask-0.11.1";
    buildInputs = with self; [];
    doCheck = false;
    propagatedBuildInputs = with self; [Werkzeug Jinja2 itsdangerous click];
    src = fetchurl {
      url = "https://pypi.python.org/packages/55/8a/78e165d30f0c8bb5d57c429a30ee5749825ed461ad6c959688872643ffb3/Flask-0.11.1.tar.gz";
      md5 = "d2af95d8fe79cf7da099f062dd122a08";
    };
  };
  Flask-Bower = super.buildPythonPackage {
    name = "Flask-Bower-1.2.1";
    buildInputs = with self; [];
    doCheck = false;
    propagatedBuildInputs = with self; [Flask];
    src = fetchurl {
      url = "https://pypi.python.org/packages/a4/8b/8759e631e50a6544a3351528b5bc12636c166e418c39c3a72a8d630e85d1/Flask-Bower-1.2.1.tar.gz";
      md5 = "91fa024f89af4adb5c67798efcf44428";
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
    name = "Werkzeug-0.11.10";
    buildInputs = with self; [];
    doCheck = false;
    propagatedBuildInputs = with self; [];
    src = fetchurl {
      url = "https://pypi.python.org/packages/b7/7f/44d3cfe5a12ba002b253f6985a4477edfa66da53787a2a838a40f6415263/Werkzeug-0.11.10.tar.gz";
      md5 = "780967186f9157e88f2bfbfa6f07a893";
    };
  };
  click = super.buildPythonPackage {
    name = "click-6.6";
    buildInputs = with self; [];
    doCheck = false;
    propagatedBuildInputs = with self; [];
    src = fetchurl {
      url = "https://pypi.python.org/packages/7a/00/c14926d8232b36b08218067bcd5853caefb4737cda3f0a47437151344792/click-6.6.tar.gz";
      md5 = "d0b09582123605220ad6977175f3e51d";
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
    propagatedBuildInputs = with self; [Flask Flask-Bower];
    src = ./.;
  };

### Test requirements

  
}
