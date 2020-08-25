#! /bin/bash

if [[ $# -lt 2 ]]; then
    echo "Usage: $0 <in/> <out/>"
    echo "in/ should be a texture pack directory. out/ will be a directory that will contain a texture pack directory."
    exit 1
fi

in="$1"; shift
out="$1"; shift

mkdir -p "$out"

cp -r textures/ "$out"/textures

for f in `find textures/ -type f -name '*.png'`; do
    echo $f
#    mkdir -p "$out"/`dirname $f`
    ~/scripts/gi-convert.sh $f "$out"/$f
done
