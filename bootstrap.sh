#! /bin/bash

set -e
mkdir dev
cd dev
wget https://raw.githubusercontent.com/rock-core/autoproj/stable/bin/autoproj_bootstrap

export AUTOPROJ_OSDEPS_MODE=all
export AUTOPROJ_IGNORE_NONEMPTY_DIR=1
export AUTOPROJ_OS=ubuntu,debian:12.04
export GEM_HOME=$PWD/.gems
gem install utilrb 
ruby autoproj_bootstrap git ../
source env.sh
autoproj full-build

