#!bin/bash
set -ex

popper badge cloudlab

set +e
popper badge
if [ $? -eq 0 ];
then
  exit 1
fi

popper badge errorout

if [ $? -eq 0 ];
then
  exit 1
fi

set -e
