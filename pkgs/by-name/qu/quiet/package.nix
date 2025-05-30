{
  lib,
  stdenv,
  fetchurl,
  appimageTools,
}:

appimageTools.wrapType2 rec {
  pname = "quiet";
  version = "4.1.2";

  src = fetchurl {
    url = "https://github.com/TryQuiet/quiet/releases/download/@quiet/desktop@${version}/Quiet-${version}.AppImage";
    hash = "sha256-oYN+oXUvSeAR+gaRxEuBZHHV6lKTS7OrYVW4MMGoUO0=";
  };

  meta = {
    description = "Private, p2p alternative to Slack and Discord built on Tor & IPFS";
    homepage = "https://github.com/TryQuiet/quiet";
    changelog = "https://github.com/TryQuiet/quiet/releases/tag/@quiet/desktop@${version}";
    license = lib.licenses.gpl3Only;
    maintainers = with lib.maintainers; [ kashw2 ];
    platforms = [ "x86_64-linux" ];
  };
}
