{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  packages = with pkgs; [
    python3 nodejs go rustc cargo git cmake ninja gcc gnumake
    ruby php composer maven gradle
  ];
}
