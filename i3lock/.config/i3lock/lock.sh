#!/bin/sh

# orig image
img="/home/lauri/.config/bg/catpuccin2.png"

# temp image for blur
blurredTempImg="/tmp/lockscreen_blurred.png"

# blur processing
magick "$img" -blur 0x5 "$blurredTempImg"

# for --nofork
ARGS="$@"

BLANK='#00000044'
CLEAR='#ffffff44'
#DEFAULT='#ff00ffcc'
DEFAULT='#E2CCCDFF'
#TEXT='#ee00eeee'
TEXT='#E2CCCDFF'
WRONG='#880000bb'
#VERIFYING='#bb00bbbb'
VERIFYING='#E2CCCDFF'
PRESSED='000000FF'

i3lock -c 000000 \
--image="$blurredTempImg" \
--insidever-color=$CLEAR     \
--ringver-color=$VERIFYING   \
\
--insidewrong-color=$CLEAR   \
--ringwrong-color=$WRONG     \
\
--inside-color=$BLANK        \
--ring-color=$DEFAULT        \
--line-color=$BLANK          \
--separator-color=$DEFAULT   \
\
--verif-color=$TEXT          \
--wrong-color=$TEXT          \
--time-color=$TEXT           \
--date-color=$TEXT           \
--layout-color=$TEXT         \
--keyhl-color=$PRESSED       \
--bshl-color=$WRONG          \
--clock                      \
--indicator                  \
--time-str="%H:%M:%S"        \
--date-str="%A, %d/%m/%Y"    \
--keylayout 1                \

$ARGS

# cleanup
rm "$blurredTempImg"
