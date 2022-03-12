#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}


run xfce4-power-manager
run systemsettings
run thunderbird
run copyq
run klipper
