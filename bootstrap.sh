#! /bin/sh

set -e
mkdir dev
cd dev
wget https://raw.githubusercontent.com/rock-core/autoproj/stable/bin/autoproj_bootstrap
ruby autoproj_bootstrap git ../
source env.sh
amake --all -k

