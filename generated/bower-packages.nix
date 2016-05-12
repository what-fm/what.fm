{ fetchbower, buildEnv }:
buildEnv { name = "bower-env"; ignoreCollisions = true; paths = [
  (fetchbower "foundation-sites" "6.2.1" "6.*" "0gr1k2i70n2m75wbpk2na5rdm1qiwlj62ac182nr9syxq3idf4k6")
  (fetchbower "font-awesome" "4.6.2" "4.*" "1ijlzzmbwmghz4468n4l29ww6rzl5s2zjv9lcx9lk4b9dkhmpq12")
  (fetchbower "jquery" "2.2.3" "~2.2.0" "1b4g42vmv8w5z1mnlbmw3cnvfkxaq957y42v9dvhwph1cqbrr85b")
  (fetchbower "what-input" "2.0.1" "~2.0.0" "0dlhmb4gifcap27cpdari4pic96znbypk6jcf2syq7ca446mqx3n")
]; }
