# Script to simplify wakeonlan syntax

function wake () {
  local mac_addr

  case "$1" in
    cantor)
      mac_addr="B4:2E:99:D5:D0:F2"
      echo -n "Wakey wakey $1..."
      ;;
    *)
      echo -n "Unknown host"
      ;;
  esac

  wakeonlan -i 192.168.1.0 $mac_addr
}
