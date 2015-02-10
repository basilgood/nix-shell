with import <nixpkgs> {};
    
  let

    beautifulsoup4 = pythonPackages.buildPythonPackage rec {
       name = "beautifulsoup4-4.3.2";
       src = fetchurl {
         url = "https://pypi.python.org/packages/source/b/beautifulsoup4/beautifulsoup4-4.3.2.tar.gz";
         md5 = "b8d157a204d56512a4cc196e53e7d8ee";
       };
    propagatedBuildInputs = [ ];
    dontStrip = true;
    };
  
    Chameleon = pythonPackages.buildPythonPackage rec {
       name = "Chameleon-2.16";
       src = fetchurl {
         url = "https://pypi.python.org/packages/source/C/Chameleon/Chameleon-2.16.tar.gz";
         md5 = "6336d780dde9f7a4b8a5a8971dd983a1";
       };
    propagatedBuildInputs = [ ];
    dontStrip = true;
    };

    suds = pythonPackages.buildPythonPackage rec {
       name = "suds-0.4.1";
       src = fetchurl {
         url = "https://pypi.python.org/packages/source/s/suds/suds-0.4.tar.gz";
         md5 = "b7502de662341ed7275b673e6bd73191";
       };
    propagatedBuildInputs = [ ];
    dontStrip = true;
    };

    six = pythonPackages.buildPythonPackage rec {
       name = "six-1.6.1";
       src = fetchurl {
         url = "https://pypi.python.org/packages/source/s/six/six-1.6.1.tar.gz";
         md5 = "07d606ac08595d795bf926cc9985674f";
       };
    propagatedBuildInputs = [ ];
    dontStrip = true;
    };    
    
   pyramid = pythonPackages.buildPythonPackage rec {
       name = "pyramid-1.4.3";
       src = fetchurl {
         url = "https://pypi.python.org/packages/source/p/pyramid/pyramid-1.4.3.tar.gz";
         md5 = "28fabf42cf585ecec7a57b5acc1174e3";
       };
    propagatedBuildInputs = [ pastedeploy translationstring venusian zope.deprecation zope.interface repoze.lru WebOb Mako Chameleon zope.component WebTest zope.event beautifulsoup4 waitress six ];
    dontStrip = true;
    };
    
   translationstring = pythonPackages.buildPythonPackage rec {
       name = "translationstring-1.3";
       src = fetchurl {
         url = "https://pypi.python.org/packages/source/t/translationstring/translationstring-1.3.tar.gz";
         md5 = "a4b62e0f3c189c783a1685b3027f7c90";
       };
    propagatedBuildInputs = [ pastedeploy ];
    dontStrip = true;
    };

   venusian = pythonPackages.buildPythonPackage rec {
       name = "venusian-1.0";
       src = fetchurl {
         url = "https://pypi.python.org/packages/source/v/venusian/venusian-1.0.tar.gz";
         md5 = "dccf2eafb7113759d60c86faf5538756";
       };
    propagatedBuildInputs = [ nose ];
    dontStrip = true;
    doCheck = false;
    };    
    
   pastedeploy = pythonPackages.buildPythonPackage rec {
       name = "pastedeploy-1.5.2";
       src = fetchurl {
         url = "https://pypi.python.org/packages/source/P/PasteDeploy/PasteDeploy-1.5.2.tar.gz";
         md5 = "352b7205c78c8de4987578d19431af3b";
       };
    propagatedBuildInputs = [ nose ];
    dontStrip = true;
    };

   Mako = pythonPackages.buildPythonPackage rec {
       name = "Mako-0.9.1";
       src = fetchurl {
         url = "https://pypi.python.org/packages/source/M/Mako/Mako-0.9.1.tar.gz";
         md5 = "fe3f394ef714776d09ec6133923736a7";
       };
    propagatedBuildInputs = [ MarkupSafe nose ];
    dontStrip = true;
    };
    
   MarkupSafe = pythonPackages.buildPythonPackage rec {
       name = "MarkupSafe-0.21";
       src = fetchurl {
         url = "https://pypi.python.org/packages/source/M/MarkupSafe/MarkupSafe-0.21.tar.gz";
         md5 = "fde838d9337fa51744283f46a1db2e74";
       };
    propagatedBuildInputs = [ ];
    dontStrip = true;
    };
    
   nose = pythonPackages.buildPythonPackage rec {
       name = "nose-1.3.0";
       src = fetchurl {
         url = "https://pypi.python.org/packages/source/n/nose/nose-1.3.0.tar.gz";
         md5 = "95d6d32b9d6b029c3c65674bd9e7eabe";
       };
    propagatedBuildInputs = [ ];
    dontStrip = true;
    };
    
   repoze.lru = pythonPackages.buildPythonPackage rec {
       name = "repoze.lru-0.6";
       src = fetchurl {
         url = "https://pypi.python.org/packages/source/r/repoze.lru/repoze.lru-0.6.tar.gz";
         md5 = "2c3b64b17a8e18b405f55d46173e14dd";
       };
    propagatedBuildInputs = [ ];
    dontStrip = true;
    };
    
   zope.deprecation = pythonPackages.buildPythonPackage rec {
       name = "zope.deprecation-4.1.1";
       src = fetchurl {
         url = "https://pypi.python.org/packages/source/z/zope.deprecation/zope.deprecation-4.1.1.tar.gz";
         md5 = "ce261b9384066f7e13b63525778430cb";
       };
    propagatedBuildInputs = [ nose ];
    dontStrip = true;
    };
    
   zope.interface = pythonPackages.buildPythonPackage rec {
       name = "zope.interface-4.1.1";
       src = fetchurl {
         url = "https://pypi.python.org/packages/source/z/zope.interface/zope.interface-4.1.1.tar.gz";
         md5 = "edcd5f719c5eb2e18894c4d06e29b6c6";
       };
    propagatedBuildInputs = [ nose ];
    dontStrip = true;
    doCheck = false;
    };
    
   zope.component = pythonPackages.buildPythonPackage rec {
       name = "zope.component-4.2.1";
       src = fetchurl {
         url = "https://pypi.python.org/packages/source/z/zope.component/zope.component-4.2.1.tar.gz";
         md5 = "cf55d496428d976f9329a4a2330a8b54";
       };
    propagatedBuildInputs = [ nose ];
    dontStrip = true;
    doCheck = false;
    };

   zope.event = pythonPackages.buildPythonPackage rec {
       name = "zope.event-4.0.3";
       src = fetchurl {
         url = "https://pypi.python.org/packages/source/z/zope.event/zope.event-4.0.3.tar.gz";
         md5 = "9a3780916332b18b8b85f522bcc3e249";
       };
    propagatedBuildInputs = [ nose ];
    dontStrip = true;
    doCheck = false;
    };    

   waitress = pythonPackages.buildPythonPackage rec {
       name = "waitress-0.8.9";
       src = fetchurl {
         url = "https://pypi.python.org/packages/source/w/waitress/waitress-0.8.9.tar.gz";
         md5 = "da3f2e62b3676be5dd630703a68e2a04";
       };
    propagatedBuildInputs = [ nose ];
    dontStrip = true;
    doCheck = false;
    };    
    
   WebOb = pythonPackages.buildPythonPackage rec {
       name = "WebOb-1.3.1";
       src = fetchurl {
         url = "https://pypi.python.org/packages/source/W/WebOb/WebOb-1.3.1.tar.gz";
         md5 = "20918251c5726956ba8fef22d1556177";
       };
    propagatedBuildInputs = [ nose ];
    dontStrip = true;
    doCheck = false;
    };

   WebTest = pythonPackages.buildPythonPackage rec {
       name = "WebTest-2.0.18";
       src = fetchurl {
         url = "https://pypi.python.org/packages/source/W/WebTest/WebTest-2.0.18.zip";
         md5 = "444a4160408670a50d7cb149a4035cf5";
       };
    propagatedBuildInputs = [ nose ];
    dontStrip = true;
    doCheck = false;
    };    
    
  in

   buildPythonPackage rec { 
    name = "PurePythonEnv";
    propagatedBuildInputs = with python27Packages; [
      git
      libxml2
      libxslt
      libzip
      python27Full
      python27Packages.virtualenv
      beautifulsoup4
      Chameleon
      suds
      six
      pyramid
      venusian
      translationstring
      pastedeploy
      Mako
      MarkupSafe
      nose
      repoze.lru
      zope.deprecation
      zope.interface
      zope.component
      zope.event
      waitress
      WebOb
      WebTest
      stdenv
      zlib ];
    src = null;
    # When used as `nix-shell --pure`
    postshellHook = ''
    unset http_proxy
    export GIT_SSL_CAINFO=/etc/ssl/certs/ca-bundle.crt
    '';

  }