#!/bin/sh

# orig image
#img="/home/lauri/.config/bg/catpuccin2.png"
img="/home/lauri/.config/bg/gruvbox/snake2.png"

# temp image for blur
blurredTempImg="/tmp/lockscreen_blurred.png"

# blur processing
magick "$img" -blur 0x5 "$blurredTempImg"

# for --nofork
ARGS="$@"

BLANK='#0000004D'
CLEAR='#FFFFFF4D'
#DEFAULT='#ff00ffcc'
DEFAULT='#DDC7A1FF'
#TEXT='#ee00eeee'
TEXT='#DDC7A1FF'
WRONG='#EA6962FF'
#VERIFYING='#bb00bbbb'
VERIFYING='#A9B665FF'
PRESSED='000000CC'

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
