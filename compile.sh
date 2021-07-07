#!/bin/bash
CURR_DIR=$( realpath "$0" | sed 's|\(.*\)/.*|\1|' ) 
if [ -z "$CURR_DIR" ] ; then
  # error; for some reason, the path is not accessible
  # to the script (e.g. permissions re-evaled after suid)
  exit 1  # fail
fi
_FILE=`basename ${1%.*}`
FILE="${CURR_DIR}/out/${_FILE}.out"
echo $FILE
mkdir -p "${CURR_DIR}/out"
iverilog -o $FILE $1
vvp $FILE
