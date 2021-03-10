#!/bin/bash

CHOICE=$(whiptail --menu "choose a theme for your polybar" 25 65 15 \
  "alpine" "" \
  "arch" "" \
  "centos" "" \
  "debian" "" \
  "devuan" "" \
  "elementaryos" "" \
  "fedora" "" \
  "freebsd" "" \
  "gentoo" "" \
  "linux" "" \
  "linuxmint" "" \
  "macos" "" \
  "mageia" "" \
  "mandriva" "" \
  "manjaro" "" \
  "raspbian" "" \
  "redhat" "" \
  "sabayon" "" \
  "slackware" "" \
  "suse" "" \
  "ubuntu" "" 3>&1 1>&2 2>&3)

if [ -z "$CHOICE" ]; then
  echo "you canceled"
else
  {
  cat <<EOF
██████╗  ██████╗ ██╗  ██╗   ██╗██████╗  █████╗ ██████╗      █████╗ ███████╗███████╗████████╗██╗  ██╗███████╗████████╗ ██████╗
██╔══██╗██╔═══██╗██║  ╚██╗ ██╔╝██╔══██╗██╔══██╗██╔══██╗    ██╔══██╗██╔════╝██╔════╝╚══██╔══╝██║  ██║██╔════╝╚══██╔══╝██╔════╝
██████╔╝██║   ██║██║   ╚████╔╝ ██████╔╝███████║██████╔╝    ███████║█████╗  ███████╗   ██║   ███████║█████╗     ██║   ██║     
██╔═══╝ ██║   ██║██║    ╚██╔╝  ██╔══██╗██╔══██║██╔══██╗    ██╔══██║██╔══╝  ╚════██║   ██║   ██╔══██║██╔══╝     ██║   ██║     
██║     ╚██████╔╝███████╗██║   ██████╔╝██║  ██║██║  ██║    ██║  ██║███████╗███████║   ██║   ██║  ██║███████╗   ██║   ╚██████╗
╚═╝      ╚═════╝ ╚══════╝╚═╝   ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝    ╚═╝  ╚═╝╚══════╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝   ╚═╝    ╚═════╝
EOF
} && cp -r ~/polybar-aesthetic/$CHOICE/* ~/.config/polybar/ && echo "polybar aesthetic finished the installation"
fi