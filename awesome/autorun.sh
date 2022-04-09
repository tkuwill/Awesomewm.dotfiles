#!/usr/bin/env bash

function run {
  if ! pgrep -f $1 ;
  then
    $@&
  fi
}


run xfce4-power-manager
run arandr
run thunderbird
run copyq
