#!/usr/bin/env bash

function _pyinit() {
   

   if [ "$#" -gt 0 ]; then
      for relative_path in "$@"; do
         touch $PWD/$relative_path/__init__.py
      done

   else
      touch $PWD/__init__.py
   fi
}

function _pymod() {
   local mod_name=$1
   local mod_path=$PWD/$mod_name

   mkdir -p $mod_path/test
   _pyinit $mod_name $mod_name/test
   touch "$mod_path/$mod_name.py"
    sed "s/MOD_NAME/$mod_name/g" ~/scripts/templates/py/test_template > "$mod_path/test/test_$mod_name.py"
}
