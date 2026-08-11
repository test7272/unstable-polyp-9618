{ pkgs ? import <nixpkgs> {} }:
pkgs.writeText "hello" "Hello World!"
