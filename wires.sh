#!/bin/bash
name=$1 ; shift
if [ ! -f ${name}.euk ] ; then
    echo "No such file or directory" 1>&2
    exit 1
fi
rm -f ${name}.{ps,png,svg}
eukleides -o${name}.ps ${name}.euk
inkscape --without-gui --file=${name}.ps --export-area-drawing \
    --export-pdf=${name}.pdf \
    --export-plain-svg=${name}.svg \
    --export-png=${name}.png >/dev/null

