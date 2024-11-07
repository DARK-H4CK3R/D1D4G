command_not_found_handle() {
        /data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
}
PS1='\[\e[31m\]┌─[\[\e[37m\]\T\[\e[31m\]]─────\e[1;93m[DARK]\e[0;31m───[\#]\n|\n\e[0;31m└─[\[\e[31m\]\e[0;35m\W\[\e[31m\]]────►\e[1;92m'
clear

clear
# dx color
r='\033[91m'
p='\033[1;95m'
y='\033[93m'
g='\033[92m'
n='\033[0m'
b='\033[94m'
c='\033[96m'

# dx Symbol
X='\033[1;92m[\033[1;00m⎯꯭̽𓆩\033[1;92m]\033[1;96m'
D='\033[1;92m[\033[1;00m〄\033[1;92m]\033[1;93m'
E='\033[1;92m[\033[1;00m×\033[1;92m]\033[1;91m'
A='\033[1;92m[\033[1;00m+\033[1;92m]\033[1;92m'
C='\033[1;92m[\033[1;00m</>\033[1;32m]\033[1;92m'
lm='\033[96m▱▱▱▱▱▱▱▱▱▱▱▱\033[0m〄\033[96m▱▱▱▱▱▱▱▱▱▱▱▱\033[1;00m'
dm='\033[93m▱▱▱▱▱▱▱▱▱▱▱▱\033[0m〄\033[93m▱▱▱▱▱▱▱▱▱▱▱▱\033[1;00m'

# Loading bar
echo ""
echo ""
echo ""
echo -e "             ${c}Dx ${y}Loading ${g}Started${n}"
echo ""
# D1 loading bar length
BAR_LENGTH=20

# D1 loading animation speed
SPEED=0.01

# D1 Initialize the loading bar
BAR=""
for ((i=0; i<BAR_LENGTH; i++)); do
  BAR+=" "
done

# D1 display the loading animation
for ((i=0; i<=100; i++)); do
  #D1 calculate the number of blocks to display
  BLOCKS=$((i * BAR_LENGTH / 100))

  # D1 update the loading bar
  BAR=""
  for ((j=0; j<BLOCKS; j++)); do
    BAR+="█"
  done
  for ((j=BLOCKS; j<BAR_LENGTH; j++)); do
    BAR+=" "
  done

  # D1 display the loading bar
  echo -ne "       \r         ${c} [${BAR}]${r} ${i}${y}%"

  # Sleep for a short duration to control the animation speed
  sleep $SPEED
done

# D1 display the final loading bar
echo -e "\r         ${c} [${BAR}] ${g}100${y}%"
echo ""
echo -e "           ${y}Loading ${c}Dx ${g}Completed${NC}"
sleep 3
clear

filename='dx1c.txt'  # Replace with your file path
termimage dx1.jpg
if [ -f "$filename" ]; then
    while IFS= read -r line; do
        echo
figlet -f ASCII-Shadow.flf " $line " | lolcat
    done < "$filename"
else
    echo -e "  ${C} ${p}Please First Enter Your Banner"
    sleep 2
    bash install.sh
fi

# Replace '/sdcard/' with the actual mount point of your SD card
SDCARD_MOUNT_POINT="/sdcard/"

# Get the disk usage information
DISK_USAGE=$(df -h "$SDCARD_MOUNT_POINT" | awk 'NR==2 {print $2, $4}')

# Extract full and free space
FULL=$(echo $DISK_USAGE | awk '{print $1}')
FREE=$(echo $DISK_USAGE | awk '{print $2}')

# Display the results
echo -e " 『STORAGE』     USAGE: $FULL | SPACE $FREE" | lolcat
echo
                 date | lolcat
echo
