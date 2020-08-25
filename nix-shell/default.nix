with import <nixpkgs> { };
stdenv.mkDerivation {
  name = "dev-environment";
  buildInputs = [
    autoconf
    automake
    btrfs-progs
    glibc
    glibc.static
    gpgme
    libapparmor
    libcap
    libseccomp
    libselinux
    libtool
    linuxPackages.bcc
    lvm2
    pkg-config
    systemd
    yajl
  ];
}
