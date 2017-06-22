#!/bin/sh

set -Ceu

# Reset the working directory to the directory above the script's path
my_abs_path=$(readlink -f "$0")
root_dirname=$(dirname "$my_abs_path")
echo "$root_dirname"
cd "$root_dirname"

release=${1:-0.1}

tar -hczvf "probcomp-stack-$release.tgz" probcomp-stack/