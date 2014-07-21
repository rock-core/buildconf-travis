#! /bin/bash

set -e
mkdir dev
cd dev
wget https://raw.githubusercontent.com/rock-core/autoproj/stable/bin/autoproj_bootstrap

export AUTOPROJ_OSDEPS_MODE=all
export AUTOPROJ_IGNORE_NONEMPTY_DIR=1
export GEM_HOME=$PWD/.gems
cat > os-release <<EOF
ID=ubuntu
ID_LIKE=ubuntu
VERSION_ID=12.04
EOF
sudo mv os-release /etc

gem install utilrb 
export AUTOPROJ_OS=ubuntu,debian:12.04
ruby autoproj_bootstrap git ../
source env.sh
autoproj full-build

