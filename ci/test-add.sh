#!/bin/bash
set -ex

source common-setup.sh

# popper add
init_test
popper add popperized/swc-lesson-pipelines/co2-emissions
test -d pipelines/co2-emissions
test -f pipelines/co2-emissions/README.md
test -f pipelines/co2-emissions/run.sh
test -f pipelines/co2-emissions/setup.sh
test -f pipelines/co2-emissions/validate.sh

# info command
popper info popperized/swc-lesson-pipelines/co2-emissions | grep 'url'

# popper add --branch
init_test
popper add popperized/swc-lesson-pipelines/co2-emissions --branch revert-1-master
test -d pipelines/co2-emissions
test -d pipelines/co2-emissions/scripts
test -f pipelines/co2-emissions/README.md
test -f pipelines/co2-emissions/run.sh
test -f pipelines/co2-emissions/setup.sh
test -f pipelines/co2-emissions/validate.sh

