#!/bin/bash
clear

BLACK='\e[30m'
RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[33m'
BLUE='\e[34m'
PURPLE='\e[35m'
CYAN='\e[36m'
WHITE='\e[37m'
NC='\e[0m'
echo""
echo -e "${RED} ___ _ ___   _ _______ ______   _____  ______  ____ ____                "
echo " | | | | / _ \/  __ \| | / /_   _| ___ \  _  | | |  / _ \ | \ | |        " 
echo " | |_| |/ /_\ \ /  \/| |/ /  | | | |_/ / | | | | | / /_\ \|  \| |        " 
echo " |  _  ||  _  | |    |    \  | | |    /| | | | | | |  _  || . ` |        " 
echo " | | | || | | | \__/\| |\  \ | | | |\ \\ \_/ / | | | | | || |\  |        " 
echo " \_| |_/\_| |_/\____/\_| \_/ \_/ \_| \_|\___/ / /  \_| |_/\_| \_/        "   
echo -e "${RED}                                                      ~ Tools for Hacking by Mr.SecreTOzş ${OG}"
echo ""
echo -e "${YELLOW} Twitter.com/YokAmaOlabilir:) | Instagram.com/byyozzi | Github.com/SecreTOzi ${NC} "
echo ""
echo "---------------------------------------------------------------------------------------"
echo ""
echo -e "${RED}[!] This Tool Must Run As ROOT [!]${NC}"
echo ""
echo -e "${CYAN}[>] Press ENTER to Install Hacktrojan, CTRL+C to Abort.${NC}"
read INPUT
echo ""

if [ "$PREFIX" = "/data/data/com.termux/files/usr" ]; then
    INSTALL_DIR="$PREFIX/usr/share/doc/hacktrojan"
    BIN_DIR="$PREFIX/usr/bin/"
    pkg install -y git python2
else
    INSTALL_DIR="/usr/share/doc/hacktrojan"
    BIN_DIR="/usr/bin/"
fi

echo "[✔] Checking directories...";
if [ -d "$INSTALL_DIR" ]; then
    echo "[!] A Directory hacktrojan Was Found.. Do You Want To Replace It ? [y/n]:" ;
    read mama
    if [ "$mama" = "y" ]; then
        rm -R "$INSTALL_DIR"
    else
        exit
    fi
fi

echo "[✔] Installing ...";
echo "";
git clone https://https://github.com/SecreTOzi/Ozi-Trojan "$INSTALL_DIR";
echo "#!/bin/bash
python $INSTALL_DIR/hacktrojan.py" '${1+"$@"}' > hacktrojan;
chmod +x hacktrojan;
sudo cp hacktrojan /usr/bin/;
rm hacktrojan;


if [ -d "$INSTALL_DIR" ] ;
then
    echo "";
    echo "[✔] Successfuly Installed !!! [✔]";
    echo "";
    echo "[✔]========================================================================[✔]";
    echo "[✔] ✔✔✔ All Is Done!! you can execute tool by typing hacktrojan !! ✔✔✔ [✔]";
    echo "[✔]========================================================================[✔]";
    echo "";
else
    echo "[✘] Installation Failed !!! [✘]";
    exit
fi
