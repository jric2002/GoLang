#!/usr/bin/env bash

#[*] Name of the script: GoLang
#[*] Description: "Language Translator"
#[*] Version: 1.0
#[*] Author: JRIC2002
#[*] Installer of the script: GoLang
#[*] Date of creation: 03/05/2019
#[*] Date of last update: 30/04/2020

#COLORS
black='\033[1;30m'
red='\033[1;31m'
green='\033[1;32m'
yellow='\033[1;33m'
blue='\033[1;34m'
magenta='\033[1;35m'
cyan='\033[1;36m'
white='\033[0m'

#INSTALACION DE PAQUETES

echo ""
printf "$green[$white*$green]$yellow Installing Packages...\n$white"
echo ""
sleep 3

apt install unstable-repo -y
apt install translate-shell -y

echo ""
printf "                     $blue>> Installation Complete <<$white"
echo ""
sleep 1

function inicio {

        clear
        printf "
             $red ____       $yellow _
             $red/ ___| ___  $yellow| |    __ _ _ __   __ _
            $red| |  _ / _ \ $yellow| |   / _' | '_ \ / _' |
            $red| |_| | (_) |$yellow| |__| (_| | | | | (_| |
             $red\____|\___/ $yellow|_____\__,_|_| |_|\__, |$white v1.0
				           $yellow|___/

           $green.:.:.$blue Script encoded by:$white @JRIC2002 $green.:.:.$white
         $green.:.:.$blue Description:$white Language Translator  $green.:.:.$white
        "
	sleep 1
        echo ""
        printf "$green[$white#$green]$magenta You want to start GoLang:\n$white"
        echo ""
        sleep 1
        printf "$green       [$white\e001$green]$yellow Yes$white\n"
        echo ""
        printf "$green       [$white\e002$green]$yellow No$white\n"
        echo ""

        printf "$green[$white\e0*$green]$green Choose an Option$white >>"
        read -p " " opt

                if [ $opt = "1" -o $opt = "01" ]; then
                        clear
                        bash GoLang
                        sleep 1
                elif [ $opt = "2" -o $opt = "02" ]; then
                        echo ""
                        exit
                else
                        clear
                        inicio
                fi

}

inicio
