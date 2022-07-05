#!/bin/sh

nix-shell -A shells.ghc --run 'cabal --project-file=cabal.project --builddir=dist new-build all'
