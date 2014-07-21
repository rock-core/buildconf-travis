#! /bin/sh

set -e
mkdir dev
cd dev
wget https://raw.githubusercontent.com/rock-core/autoproj/stable/bin/autoproj_bootstrap

export AUTOPROJ_OSDEPS_MODE=all
export AUTOPROJ_IGNORE_NONEMPTY_DIR=1
ruby autoproj_bootstrap git ../
source env.sh
amake --all -k

