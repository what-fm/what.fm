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
  Flask-Script = super.buildPythonPackage {
    name = "Flask-Script-2.0.5";
    buildInputs = with self; [];
    doCheck = false;
    propagatedBuildInputs = with self; [Flask];
    src = fetchurl {
      url = "https://pypi.python.org/packages/66/e9/2b3c7c548a6bad0b59da21e2050613da43aae4da617fb98847efa3e09a43/Flask-Script-2.0.5.tar.gz";
      md5 = "e5c73d3b7937f5b88942f342f9617029";
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
  flask-assets = super.buildPythonPackage {
    name = "flask-assets-0.11";
    buildInputs = with self; [];
    doCheck = false;
    propagatedBuildInputs = with self; [Flask webassets];
    src = fetchurl {
      url = "https://pypi.python.org/packages/61/92/2e17b5fda9535c2af6444c5794a85d12941b4955b27ea8f46d3ce9c58e0a/Flask-Assets-0.11.tar.gz";
      md5 = "d7fa762f704ab5eb62e6801d43ce2300";
    };
  };
  gunicorn = super.buildPythonPackage {
    name = "gunicorn-19.6.0";
    buildInputs = with self; [];
    doCheck = false;
    propagatedBuildInputs = with self; [];
    src = fetchurl {
      url = "https://pypi.python.org/packages/84/ce/7ea5396efad1cef682bbc4068e72a0276341d9d9d0f501da609fab9fcb80/gunicorn-19.6.0.tar.gz";
      md5 = "338e5e8a83ea0f0625f768dba4597530";
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
  webassets = super.buildPythonPackage {
    name = "webassets-0.11.1";
    buildInputs = with self; [];
    doCheck = false;
    propagatedBuildInputs = with self; [];
    src = fetchurl {
      url = "https://pypi.python.org/packages/0e/97/f0cd013a3ae074672e9fdfa8629e4071b5cc420a2c82bef5622a87631d1c/webassets-0.11.1.tar.gz";
      md5 = "6acca51bd12fbdc0399ab1a9b67a1599";
    };
  };
  what.fm = super.buildPythonPackage {
    name = "what.fm-0.0.1";
    buildInputs = with self; [];
    doCheck = false;
    propagatedBuildInputs = with self; [Flask Flask-Script flask-assets gunicorn];
    src = ./.;
  };

### Test requirements

  
}
