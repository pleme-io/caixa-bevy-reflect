# nix/modules/darwin.nix — auto-generated from bevy_reflect.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.bevy_reflect; in {
  options.services.bevy_reflect = {
    enable = lib.mkEnableOption "bevy_reflect";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_reflect or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
