#! /bin/bash

# Original settings from Pat:

# Saturation -23: 77%
# Lightness -19: 81%
# Red +55
# Green -10: 90%
# Blue -42: 58%

if [[ $# -lt 2 ]]; then
    echo "Usage: $0 <in> <out>"
    exit 1
fi

f="$1"; shift
out="$1"; shift

# Saturation=0.77
# Lightness=0.81
#
# R=1.55
# G=0.9
# B=0.58

Saturation=0.6
Lightness=0.8

R=2.5
G=.8
B=0.2

convert "$f" \
	-colorspace HSL \
	-channel Saturation -evaluate multiply $Saturation \
	-channel Lightness -evaluate multiply $Lightness \
	-colorspace RGB \
	-channel R -evaluate multiply $R \
	-channel G -evaluate multiply $G \
	-channel B -evaluate multiply $B \
	-colorspace sRGB "$out"
