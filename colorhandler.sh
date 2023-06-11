
function _color_()
{
#字体颜色
    nn=""
    case "$1" in
	black)  nn="30;";;
        red)    nn="31;";;
        green)  nn="32;";;
        yellow) nn="33;";;
        blue)   nn="34;";;
        purple) nn="35;";;
        cyan)   nn="36;";;
	white)  nn="37;";;
    esac
#ANSI控制码
    ff=""
    case "$3" in
        bold)   ff="1m";;
        bright) ff="2m";;
        uscore) ff="4m";;
        blink)  ff="5m";;
        invert) ff="7m";;
    esac
#背景颜色
    mm=""
    case "$2" in
	black)     mm="40;";;
	darkred)   mm="41;";;
	green)     mm="42;";;
	yellow)    mm="43;";;
	blue)      mm="44;";;
	purple)    mm="45;";;
	darkgreen) mm="46;";;
	white)     mm="47;";;
    esac
#    echo "$nn" "$mm" "$ff"
    color_begin=`echo -e -n "\033[${mm}${nn}${ff}"`
    color_end=`echo -e -n "\033[0m"`
    while read line; do
        echo "${color_begin}${line}${color_end}"
    done
}

#echo "this is a test" | _color_ blue white blink
