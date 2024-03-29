# This file has been generated by node2nix 1.11.1. Do not edit!

{nodeEnv, fetchurl, fetchgit, nix-gitignore, stdenv, lib, globalBuildInputs ? []}:

let
  sources = {
    "@tauri-apps/api-1.5.3" = {
      name = "_at_tauri-apps_slash_api";
      packageName = "@tauri-apps/api";
      version = "1.5.3";
      src = fetchurl {
        url = "https://registry.npmjs.org/@tauri-apps/api/-/api-1.5.3.tgz";
        sha512 = "zxnDjHHKjOsrIzZm6nO5Xapb/BxqUq1tc7cGkFXsFkGTsSWgCPH1D8mm0XS9weJY2OaR73I3k3S+b7eSzJDfqA==";
      };
    };
    "dseg-0.46.0" = {
      name = "dseg";
      packageName = "dseg";
      version = "0.46.0";
      src = fetchurl {
        url = "https://registry.npmjs.org/dseg/-/dseg-0.46.0.tgz";
        sha512 = "+wigrEmU4uJ75jtg26BFRoQdPXn8IVltzwI1ZDNsSoNdeO4vLpOssS/XNZNo8e3x5tBUBZd2aU0XeGhWniH8FA==";
      };
    };
  };
  args = {
    name = "tauri";
    packageName = "tauri";
    version = "0.0.1";
    src = ./.;
    dependencies = [
      sources."@tauri-apps/api-1.5.3"
      sources."dseg-0.46.0"
    ];
    buildInputs = globalBuildInputs;
    meta = {
    };
    production = true;
    bypassCache = true;
    reconstructLock = true;
  };
in
{
  args = args;
  sources = sources;
  tarball = nodeEnv.buildNodeSourceDist args;
  package = nodeEnv.buildNodePackage args;
  shell = nodeEnv.buildNodeShell args;
  nodeDependencies = nodeEnv.buildNodeDependencies (lib.overrideExisting args {
    src = stdenv.mkDerivation {
      name = args.name + "-package-json";
      src = nix-gitignore.gitignoreSourcePure [
        "*"
        "!package.json"
        "!package-lock.json"
      ] args.src;
      dontBuild = true;
      installPhase = "mkdir -p $out; cp -r ./* $out;";
    };
  });
}
