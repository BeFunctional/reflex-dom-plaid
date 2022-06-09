let
  reflex-platform = import ((import <nixpkgs> {}).fetchFromGitHub {
    owner  = "reflex-frp";
    repo   = "reflex-platform";
    rev    = "ac66356c8839d1dc16cc60887c2db5988a60e6c4";
    sha256 = "0zk8pf72lid6cqq4mlr1mcwh6zd5lz9i83kw519aci6mfba1afvq";
  }) {};
in
reflex-platform.project ({ pkgs, ... }: {
  packages = {
    reflex-dom-plaid = ./reflex-dom-plaid;
    demo = ./demo;
  };

  shells = {
    ghc = ["reflex-dom-plaid" "demo"];
    ghcjs = ["reflex-dom-plaid" "demo"];
  };
})
