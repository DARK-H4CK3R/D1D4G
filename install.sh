#bin/bash/'!¡
clear
# dx color
r='\033[91m'
p='\033[95m'
y='\033[93m'
g='\033[92m'
n='\033[0m'
b='\033[94m'
c='\033[96m'

# dx Symbol
X='\033[92m[\033[00m⎯꯭̽𓆩\033[92m]\033[96m'
D='\033[92m[\033[00m〄\033[92m]\033[93m'
E='\033[92m[\033[00m×\033[92m]\033[91m'
A='\033[92m[\033[00m+\033[92m]\033[92m'
C='\033[92m[\033[00m</>\033[92m]\033[92m'
lm='\033[96m▱▱▱▱▱▱▱▱▱▱▱▱\033[0m〄\033[96m▱▱▱▱▱▱▱▱▱▱▱▱\033[1;00m'
dm='\033[93m▱▱▱▱▱▱▱▱▱▱▱▱\033[0m〄\033[93m▱▱▱▱▱▱▱▱▱▱▱▱\033[1;00m'

# dx info
MODEL=$(getprop ro.product.model)
VENDOR=$(getprop ro.product.manufacturer)
LANGUAGE=$(getprop ro.product.locale.language)
VS=$(getprop ro.build.version.release)
UP=$(date +'%Y-%m-%d %H:%M')
IP=$(curl -s ipinfo.io/ip)
KERNEL=$(uname -r)
SHELL=$(basename $SHELL)
CPU=$(uname -m)
RAM=$(free | grep Mem | awk '{print $2 / 1024 / 1024}')
CPU_CORE=$(grep -c processor /proc/cpuinfo)
TM=$(date +"%T")

ROOT=$(df -h / | tail -1 | awk '{print $4}')
DATA=$(df -h /data | tail -1 | awk '{print $4}')


# dx icon
    OS="\uf6a6"
    HOST="\uf6c3"
    KER="\uf83c"
    UPT="\uf49b"
    PKGS="\uf8d6"
    SH="\ue7a2"
    TERMINAL="\uf489"
    CHIP="\uf2db"
    CPUI="\ue266"

sp() {
    IFS=''
    sentence=$1
    second=${2:-0.05}
    for (( i=0; i<${#sentence}; i++ )); do
        char=${sentence:$i:1}
        echo -n "$char"
        sleep $second
    done
    echo
}

# sp Dark" 0.1
tr() {
# Check if wget is installed
if command -v wget &>/dev/null; then
    echo ""
else
    echo ""
    pkg install wget -y >/dev/null 2>&1
fi

# Check if curl is installed
if command -v curl &>/dev/null; then
    echo ""
else
    echo ""
    pkg install curl -y >/dev/null 2>&1
fi
}

# dx setup
setup() {
# dx move
cp dx1c.txt $PREFIX/etc
cp bash.bashrc $PREFIX/etc
cp ASCII-Shadow.flf $PREFIX/etc
clear
}
dxnetcheck() {
clear
echo ""
echo ""
echo -e "               ${p}╔═══════════════╗"
echo -e "               ${p}║ ${n}</>  ${c}DARK-X${p}   ║"
echo -e "               ${p}╚═══════════════╝"
echo -e "  ${p}╔════════════════════════════════════════════╗"
echo -e "  ${p}║  ${C} ${y}Checking Your Internet Connection¡${p}  ║"
echo -e "  ${p}╚════════════════════════════════════════════╝${n}\n"
	sleep 3
    while true; do
        wget --spider --quiet https://github.com
        if [ "$?" != 0 ]; then
            echo -e "  ${E} ${r}No internet! \033[91m(ToT)\007\n"
            sleep 2.5
        else
            break
        fi
    done
    clear
}

donotchange() {
clear
echo ""
echo ""
echo -e "${c}               __"
echo -e "       _(\    |${r}@@${c}|            ${g}Hey 👋 ${c}"
echo -e "      (__/\__ \--/ __    ${p}[Enter Your Name]${c}"
echo -e "         \___|----|  |   __"
echo -e "             \ ${p}][ ${c}/\ )_ / _\ "
echo -e "             /\__/\ \__O (__"
echo -e "            (--/\--)    \__/"
echo -e "            _)(  )(_"
echo -e "            ---  --- ${y}"
echo""
read -p "[+]──[Enter Your Name]────► " name
echo "$name" > dx1c.txt
echo
sp " Saved Your name (${name}) to banner"
echo
sleep 0.5
clear
echo ""
echo ""
echo -e "${c}               __"
echo -e "       _(\    |${r}@@${c}|            ${g}Hey 👋 ${c}"
echo -e "      (__/\__ \--/ __    ${p}[Enter Your Image]${c}"
echo -e "         \___|----|  |   __"
echo -e "             \ ${p}][ ${c}/\ )_ / _\ "
echo -e "             /\__/\ \__O (__"
echo -e "            (--/\--)    \__/"
echo -e "            _)(  )(_"
echo -e "            ---  --- ${y}"
echo""
echo -e "${c}Image Path location ${g}Ex:- /sdcard/YOUR_IMAGE.jpg${y}"
read -p "[+]──[Enter the Image path]────► " img

if [ -f "$img" ]; then
    cp "$img" dx1.jpg
    mv dx1.jpg "$PREFIX/etc"
    echo
    sp "Saved Your name (dx.jpg) to banner"
    else
        echo
    sp "Image file path does not exist: $img"
    sleep 0.5
    bash install.sh
fi
clear
echo ""
echo ""
echo -e "${p}        💜     __"
echo -e "       _(\    |${b}@@${p}|         ${g}Hey 👋 ${p}"
echo -e "      (__/\__ \--/ __    ${C} ${g}$name${p}"
echo -e "         \___|----|  |   __"
echo -e "             \ ${c}][ ${p}/\ )_ / _\ "
echo -e "             /\__/\ \__O (__"
echo -e "            (--/\--)    \__/"
echo -e "            _)(  )(_"
echo -e "            ---  --- ${n}"
sleep 2
clear
echo ""
echo ""
echo -e "${p}        💛     __"
echo -e "       _(\    |${b}@@${p}|             ${c}$name${p}"
echo -e "      (__/\__ \--/ __    ${C} ${g}WELCOME${p}"
echo -e "         \___|----|  |   __"
echo -e "             \ ${c}][ ${p}/\ )_ / _\ "
echo -e "             /\__/\ \__O (__"
echo -e "            (--/\--)    \__/"
echo -e "            _)(  )(_"
echo -e "            ---  --- ${n}"
sleep 1
clear
echo ""
echo ""
echo -e "${p}        💖     __"
echo -e "       _(\    |${b}@@${p}|             ${c}$name${p}"
echo -e "      (__/\__ \--/ __    ${C} ${g}TO${p}"
echo -e "         \___|----|  |   __"
echo -e "             \ ${c}][ ${p}/\ )_ / _\ "
echo -e "             /\__/\ \__O (__"
echo -e "            (--/\--)    \__/"
echo -e "            _)(  )(_"
echo -e "            ---  --- ${n}"
sleep 1
clear
echo ""
echo ""
echo -e "${p}        🥰     __"
echo -e "       _(\    |${b}@@${p}|             ${c}$name${p}"
echo -e "      (__/\__ \--/ __    ${C} ${g}DARK BANNER${p}"
echo -e "         \___|----|  |   __"
echo -e "             \ ${c}][ ${p}/\ )_ / _\ "
echo -e "             /\__/\ \__O (__"
echo -e "            (--/\--)    \__/"
echo -e "            _)(  )(_"
echo -e "            ---  --- ${n}"
sleep 2
clear
}

banner() {
echo
echo
echo -e "      ${c}██████╗  ██╗██████╗ ██╗  ██╗ ██████╗"
echo -e "      ${c}██╔══██╗███║██╔══██╗██║  ██║██╔════╝"
echo -e "      ${c}██║  ██║╚██║██║  ██║███████║██║  ███╗"
echo -e "      ${y}██║  ██║ ██║██║  ██║╚════██║██║   ██║"
echo -e "      ${y}██████╔╝ ██║██████╔╝     ██║╚██████╔╝"
echo -e "      ${y}╚═════╝  ╚═╝╚═════╝      ╚═╝ ╚═════╝${n}"
echo -e "${y}             +-+-+-+-+-+-+-+-+-+"
echo -e "${c}             |B|Y|-|D|A|R|K|-|S|"
echo -e "${y}             +-+-+-+-+-+-+-+-+-+${n}"
echo
}
# dx Function to detect the operating system
detect_os() {
    uname
}

add_to_path() {
    dir="/home/$USER/.local/bin"
    if ! echo $PATH | grep -q $dir; then
        echo "export PATH=$dir:\$PATH" >>~/.zshrc
        source ~/.zshrc
    fi
}
# dx Function to check the Linux distribution
check_distro() {
if [ -f /etc/os-release ]; then
        cat /etc/os-release | grep '^ID='
    else
        echo "android"
    fi
}
# dx Function to install the required utilities and modules for Termux
termux() {
    apt update >/dev/null 2>&1
    apt upgrade -y >/dev/null 2>&1
    pkg install git -y >/dev/null 2>&1
    pkg install termimage -y >/dev/null 2>&1
    pkg install python -y >/dev/null 2>&1
    pip install lolcat >/dev/null 2>&1
    pkg install mpv -y >/dev/null 2>&1
    pkg install figlet -y >/dev/null 2>&1
}
operating_system=$(detect_os)


# dx Check the user's operating system and perform different actions based on the operating system
if [ -d "/data/data/com.termux/files/usr/" ]; then
    # If the user is using Termux, install the required utilities and modules
    tr
    dxnetcheck
    donotchange
    banner
    echo -e " ${C} ${y}Detected Termux on Android ${p}| ${g}[${n}${TERMINAL}${g}] ${SHELL}${n}"
    echo -e " ${A} ${g}Installing package.${n}"
    sleep 3
    echo -e " ${A} ${g}Wait a few minutes.${n}"
    echo ""
    # dx If the user is using Termux on Android, install the required utilities and modules
    sleep 3
    termux
    cd $HOME
    # dx check if D1DOS folder exists
    if [ -d "D1D4G" ]; then
        cd D1D4G
        sleep 2
	clear
	banner
	echo -e " ${C} ${c}Package Installed Completed..${n}"
	sleep 2
	clear
	banner
	echo -e " ${C} ${c}Package Setup Your Termux..${n}"
	setup
	clear
	banner
	echo -e " ${C} ${c}Ready To Go..........${n}"
	echo -e " ${C} ${c}Restart Your Termux App${n}"
	exit 0
    else
        clear
        banner
	echo -e " ${E} ${r}Tools Not Exits Your Terminal.. ${p}| ${g}[${n}${TERMINAL}${g}] ${SHELL}${n}"
	sleep 3
	bash up.sh
    fi
    elif [[ "$operating_system" == *"Linux"* ]]; then
    # dx If the user is using Linux, check the distribution
    linux_distro=$(check_distro)
    if [[ "$linux_distro" == *"kali"* ]]; then
        # dx If the user is using Kali Linux, install the required utilities and modules
        linux_distro=$(check_distro)
    lx
    dxnetcheck
    banner
echo -e " ${E} ${r}Sorry, this Linux distribution is not supported ${p}| ${g}[${n}${HOST}${g}] ${SHELL}${n}"
    echo ""
    sleep 1
	exit 1
         fi
    else
    clear
    banner
        echo -e " ${E} ${r}Sorry, this Linux distribution is not supported ${p}| ${g}[${n}${HOST}${g}] ${SHELL}${n}"
    fi
else
    # dx If the user's operating system does not match any of the above options, print a message
    clear
    banner
    echo -e " ${E} ${r}Sorry, this operating system is not supported ${p}| ${g}[${n}${HOST}${g}] ${SHELL}${n}"
fi
