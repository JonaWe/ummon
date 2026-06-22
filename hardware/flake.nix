{
  description = "ESP32-C6 Environment Sensor Hardware Development";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  outputs = {
    self,
    nixpkgs,
  }: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
    jlc = pkgs.writeShellScriptBin "jlc" ''
      exec ${pkgs.easyeda2kicad}/bin/easyeda2kicad \
        --full --project-relative --output "$PWD/lib/parts" --lcsc_id "$@"
    '';
  in {
    devShells.${system}.default = pkgs.mkShell {
      packages = [ pkgs.easyeda2kicad jlc ];
    };
  };
}
