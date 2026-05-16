#!/bin/bash

# orig image
#img="/home/lauri/.config/bg/gruvbox/street.jpg"
#img="/home/lauri/.config/bg/gruvbox/pixel.jpg"
#img="/home/lauri/.config/bg/gruvbox/leaf.jpg"
#img="/home/lauri/.config/bg/gruvbox/snake.jpg"
#img="/home/lauri/.config/bg/gruvbox/cyborgdark.png"
#img="/home/lauri/.config/bg/gruvbox/cyborglight.png"
#img="/home/lauri/.config/bg/gruvbox/palmtree.jpg"
#img="/home/lauri/.config/bg/guweiz/alley.jpg"      
#img="/home/lauri/.config/bg/guweiz/butterfly.jpg"  
#img="/home/lauri/.config/bg/guweiz/cozy.jpg"
#img="/home/lauri/.config/bg/guweiz/gate.jpg"
#img="/home/lauri/.config/bg/guweiz/samurai.jpg"    
img="/home/lauri/.config/bg/guweiz/warrior.jpg"


# temp image for blur
blurredTempImg="/tmp/lockscreen_blurred.jpg"

# blur processing
magick "$img" -gravity center -crop 1920x1080+0+0 +repage -blur 0x5 "$blurredTempImg"

# for --nofork
ARGS="$@"

BLANK='#0000004D'
DEFAULT='#DDC7A1FF'
WRONG='#EA6962FF'
WRONG_TRANSPARENT='#EA69624D'
VERIFYING='#A9B665FF'
VERIFYING_TRANSPARENT='#A9B6654D'
PRESSED='#000000CC'

i3lock -c 000000 \
--image="$blurredTempImg" \
--insidever-color=$VERIFYING_TRANSPARENT     \
--ringver-color=$VERIFYING   \
\
--insidewrong-color=$WRONG_TRANSPARENT   \
--ringwrong-color=$WRONG     \
\
--inside-color=$BLANK        \
--ring-color=$DEFAULT        \
--line-color=$BLANK          \
--separator-color=$DEFAULT   \
\
--verif-color=$DEFAULT          \
--wrong-color=$DEFAULT          \
--time-color=$DEFAULT           \
--date-color=$DEFAULT           \
--layout-color=$DEFAULT         \
--keyhl-color=$PRESSED       \
--bshl-color=$WRONG          \
--clock                      \
--indicator                  \
--time-str="%H:%M:%S"        \
--date-str="%A, %d/%m/%Y"    \
--keylayout 1                \
\
$ARGS

# cleanup (remove temp picture)
rm "$blurredTempImg"
