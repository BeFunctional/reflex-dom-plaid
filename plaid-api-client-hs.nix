{
  pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/ea8ca72ec533ebc0790ef30b9add3f56abffb068.tar.gz") {}
}:

pkgs.stdenv.mkDerivation {
  name = "plaid-api-client-0.0.1";
  description = "Generates haskell api client code for plaid based on openapi";
  src = pkgs.fetchurl {
    url = "https://github.com/plaid/plaid-openapi/archive/c7da8d797dca4d4280a7d465ad4ea57dbe85a8f2.tar.gz";
    sha256 = null;
  };

  buildInputs =
    [ pkgs.wget
      pkgs.openjdk
    ];

  configurePhase = ''
    wget --no-check-certificate https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/6.0.0/openapi-generator-cli-6.0.0.jar -O openapi-generator-cli.jar
  '';

  buildPhase = ''
    java -jar openapi-generator-cli.jar generate -i 2020-09-14.yml -g haskell -o plaid-api-client
  '';

  installPhase = ''
    mv plaid-api-client $out/
  '';
}
