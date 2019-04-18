#!/bin/bash

clear;

BLACK="\033[30m"
RED="\033[31m"
GREEN="\033[32m"
YELLOW="\033[33m"
BLUE="\033[34m"
PINK="\033[35m"
CYAN="\033[36m"
WHITE="\033[37m"
NORMAL="\033[0;39m"

printf "\n"
cat << "EOF"
╔═╗╦ ╦╔╗ ╔═╗╦═╗   ╦═╗╔═╗╔╦╗
║  ╚╦╝╠╩╗║╣ ╠╦╝───╠╦╝╠═╣ ║ 
╚═╝ ╩ ╚═╝╚═╝╩╚═   ╩╚═╩ ╩ ╩  
EOF
printf "                     $BLUE v1.0 $NORMAL \n"
printf "\n"
printf "Author: $BLUE      cha0zz $NORMAL \n"
#printf "Version: $BLUE     1.0 $NORMAL \n"
printf "Created: $BLUE     November 1st 2017 $NORMAL \n"
printf "\n"
echo -e "\e[2mCyber-Rat is a free software to use. It is meant to collect information about target's
system to escalate to root. I am not responsible
for any damage caused by it. Be responsible when using this tool \e[22m"
printf "\n"
printf "$RED[!]$NORMAL Disclaimer: You must agree to continue!\n"
sleep 1

read -p "[Y] for Yes or [N] for GTFO: " prompt
	if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" || $prompt == "" ]]
	then
		printf "\n"
		printf "$GREEN[*]$NORMAL Executing script, and will scan the system for information \n"
		sleep 1.4
		printf "\n"
#-------------------------------------------------------------------------------------------------------------
#                                             |BEGINNING OF THE SCRIP|
#-------------------------------------------------------------------------------------------------------------

#----SYSTEM INFO-----------------------------------------------------------
		printf "\n"

		#------------------YELLOW SEPARATOR-----------------------#
		printf "$YELLOW"	                                  #
		printf ".-------------.\n"				  #
		printf "| SYSTEM INFO |\n"				  #
		printf "*-------------*\n"				  #
		printf "$NORMAL"                                          #
		#---------------------------------------------------------#

		# Hostname
		printf "$YELLOW[+]$RED Hostname: $NORMAL"
		printf "\n"
		hostname # Command

		#sleep 0.2

		#---------------------------------------------------------#
		printf "$BLUE"	                                          #
		printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '_' #
		printf "$NORMAL"                                          #
		#---------------------------------------------------------#

		# Name, Kernel
		printf "$YELLOW[+]$RED Kernel:$NORMAL"
		printf "\n"
		/bin/uname -ar # Command

		#---------------------------------------------------------#
		printf "$BLUE"	                                          #
		printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '_' #
		printf "$NORMAL"                                          #
		#---------------------------------------------------------#

		#sleep 0.2

		# ID
		printf "$YELLOW[+]$RED ID:$NORMAL"
		printf "\n"
		id # Command

		#sleep 0.2

		#---------------------------------------------------------#
		printf "$BLUE"	                                          #
		printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '_' #
		printf "$NORMAL"                                          #
		#---------------------------------------------------------#

		# Will check for Name, Version
		printf "$YELLOW[+]$RED Version:$NORMAL"
		printf "\n"
		/bin/cat /etc/issue; # Command
		printf "\n"
		/bin/cat /etc/*-release # Command

		#sleep 0.2

		#---------------------------------------------------------#
		printf "$BLUE"	                                          #
		printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '_' #
		printf "$NORMAL"                                          #
		#---------------------------------------------------------#

		# Logged in as
		printf "$YELLOW[+]$RED Logged in as:$NORMAL"
		printf "\n"
		whoami # Command

		sleep 0.2

		#---------------------------------------------------------#
		printf "$BLUE"	                                          #
		printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '_' #
		printf "$NORMAL"                                          #
		#---------------------------------------------------------#

		#sleep 0.2

		# Logged in users:
		printf "$YELLOW[+]$RED Logged in users:$NORMAL"
		printf "\n"
		/usr/bin/w # Command

		#---------------------------------------------------------#
		printf "$BLUE"	                                          #
		printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '_' #
		printf "$NORMAL"                                          #
		#---------------------------------------------------------#

		#sleep 0.2

		# Will check for users
		printf "$YELLOW[+]$RED Current (interesting) Users:$NORMAL"
		printf "\n"
		/bin/cat /etc/passwd 2>/dev/null |grep root
		/bin/cat /etc/passwd 2>/dev/null |grep 1000
		/bin/cat /etc/passwd 2>/dev/null |grep 1001
		/bin/cat /etc/passwd 2>/dev/null |grep www-data

		#---------------------------------------------------------#
		printf "$BLUE"	                                          #
		printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '_' #
		printf "$NORMAL"                                          #
		#---------------------------------------------------------#

		#sleep 0.2

		# Super users
		printf "$YELLOW[+]$RED Super Users:$NORMAL"
		printf "\n"
		grep -v -E "^#" /etc/passwd | awk -F: '$3 == 0 { print $1}' # Command
		awk -F: '($3 == "0") {print}' /etc/passwd # Command

		#---------------------------------------------------------#
		printf "$BLUE"	                                          #
		printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '_' #
		printf "$NORMAL"                                          #
		#---------------------------------------------------------#

		#sleep 0.2

		# System file info
		printf "$YELLOW[+]$RED System File Info:$NORMAL"
		printf "\n"
		/bin/df -h # Command

		#---------------------------------------------------------#
		printf "$BLUE"	                                          #
		printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '_' #
		printf "$NORMAL"                                          #
		#---------------------------------------------------------#

		#sleep 0.2

#----Enviroment INFO-----------------------------------------------------------
	

		#------------------YELLOW SEPARATOR-----------------------#
		printf "$YELLOW"	                                  #
		printf ".------------------.\n"				  #
		printf "| Environment INFO |\n"				  #
		printf "*------------------*\n"				  #
		printf "$NORMAL"                                          #
		#---------------------------------------------------------#

		# Path
		printf "$YELLOW[+]$RED Path:$NORMAL"
		printf "\n"
		echo $PATH

		#---------------------------------------------------------#
		printf "$BLUE"	                                          #
		printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '_' #
		printf "$NORMAL"                                          #
		#---------------------------------------------------------#

		#sleep 0.2

		# Shells
		printf "$YELLOW[+]$RED Shells on the system:$NORMAL"
		printf "\n"
		cat /etc/shells 2>/dev/null # Command

		#---------------------------------------------------------#
		printf "$BLUE"	                                          #
		printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '_' #
		printf "$NORMAL"                                          #
		#---------------------------------------------------------#

		#sleep 0.2

		# Sudo -l
		printf "$YELLOW[+]$RED Sudo info:$NORMAL"
		printf "\n"
		sudo -l # Command

		#---------------------------------------------------------#
		printf "$BLUE"	                                          #
		printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '_' #
		printf "$NORMAL"                                          #
		#---------------------------------------------------------#

		#sleep 0.2

		# Sensitive files
		printf "$YELLOW[+]$RED Can we write & read into sensitive files?:$NORMAL"
		printf "\n"
		ls -alh /etc/passwd 2>/dev/null # Command
		ls -alh /etc/shadow 2>/dev/null # Command
		ls -alh /etc/group 2>/dev/null # Command
		ls -alh /etc/profile 2>/dev/null # Command

		#---------------------------------------------------------#
		printf "$BLUE"	                                          #
		printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '_' #
		printf "$NORMAL"                                          #
		#---------------------------------------------------------#

#----NETWORK INFO----------------------------------------------------------

		#printf "\n"
		#------------------YELLOW SEPARATOR-----------------------#
		printf "$YELLOW"	                                  #
		printf ".-----------------.\n"				  #
		printf "| NETWORKING INFO |\n"				  #
		printf "*-----------------*\n"				  #
		printf "$NORMAL"                                          #
		#---------------------------------------------------------#

		# Will Check for IP
		printf "$YELLOW[+]$RED IP & Mac (NIC info):$NORMAL"
		printf "\n"
		ip2="$(ifconfig eth0 2> /dev/null | awk '{print $2}' | egrep "([0-9]{1,3}[\.]){3}[0-9]{1,3}")"
		ip3="$(ifconfig tun0 2> /dev/null | awk '{print $2}' | egrep "([0-9]{1,3}[\.]){3}[0-9]{1,3}")"
		mac=$(cat /sys/class/net/eth0/address)
		echo *mac: $mac 
		echo eth0: $ip2
		echo tun0: $ip3

		#sleep 0.2

		#---------------------------------------------------------#
		printf "$BLUE"	                                          #
		printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '_' #
		printf "$NORMAL"                                          #
		#---------------------------------------------------------#

		# Network Ports with PID's
		printf "$YELLOW[+]$RED Network Ports with PID's:$NORMAL"
		printf "\n"
		netstat -tulpn # Command

		#---------------------------------------------------------#
		printf "$BLUE"	                                          #
		printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '_' #
		printf "$NORMAL"                                          #
		#---------------------------------------------------------#

		#sleep 0.2

		# Listenning TCP
		printf "$YELLOW[+]$RED TCP Connection:$NORMAL"
		printf "\n"
		netstat -antup 2>/dev/null |grep tcp # Command

		#---------------------------------------------------------#
		printf "$BLUE"	                                          #
		printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '_' #
		printf "$NORMAL"                                          #
		#---------------------------------------------------------#

		#sleep 0.2

		# Listenning UDP
		printf "$YELLOW[+]$RED UDP Connection:$NORMAL"
		printf "\n"
		netstat -anup 2>/dev/null |grep udp # Command

		#---------------------------------------------------------#
		printf "$BLUE"	                                          #
		printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '_' #
		printf "$NORMAL"                                          #
		#---------------------------------------------------------#

		#sleep 0.2

		# PING
		printf "$YELLOW[+]$RED Can We ping google?:$NORMAL"
		printf "\n"
		ping -c 2 8.8.8.8 |grep bytes 2>/dev/null # Command

		#---------------------------------------------------------#
		printf "$BLUE"	                                          #
		printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '_' #
		printf "$NORMAL"                                          #
		#---------------------------------------------------------#

		#sleep 0.2

		# IP Tables
		printf "$YELLOW[+]$RED IP Tables:$NORMAL"
		printf "\n"
		iptables -L 2>/dev/null # Command

		#---------------------------------------------------------#
		printf "$BLUE"	                                          #
		printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '_' #
		printf "$NORMAL"                                          #
		#---------------------------------------------------------#

#----CronJobs INFO----------------------------------------------------------

		#printf "\n"
		#------------------YELLOW SEPARATOR-----------------------#
		printf "$YELLOW"	                                  #
		printf ".-----------.\n"				  #
		printf "| Cron Jobs |\n"				  #
		printf "*-----------*\n"				  #
		printf "$NORMAL"                                          #
		#---------------------------------------------------------#

		#sleep 0.2

		# Cron Jobs
		printf "$YELLOW[+]$RED Cron Jobs:$NORMAL"
		printf "\n"
		ls -al /etc/ | grep cron 2>/dev/null # Command

		#---------------------------------------------------------#
		printf "$BLUE"	                                          #
		printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '_' #
		printf "$NORMAL"                                          #
		#---------------------------------------------------------#

		#sleep 0.2

		# Contabs
		printf "$YELLOW[+]$RED Contabs:$NORMAL"
		printf "\n"
		cat /etc/crontab 2>/dev/null # Command

		#---------------------------------------------------------#
		printf "$BLUE"	                                          #
		printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '_' #
		printf "$NORMAL"                                          #
		#---------------------------------------------------------#

		#sleep 0.2

		# What cron Jobs are schedulled
		printf "$YELLOW[+]$RED What cron Jobs are schedulled?:$NORMAL \n"
		#printf "\n"
		crontab -l # Command
		#printf "\n"
		printf "$RED\vvar/spool $NORMAL \n"
		ls -alh /var/spool/cron

		#---------------------------------------------------------#
		printf "$BLUE"	                                          #
		printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '_' #
		printf "$NORMAL"                                          #
		#---------------------------------------------------------#

		#sleep 0.2


#----Services INFO----------------------------------------------------------

		#printf "\n"
		#------------------YELLOW SEPARATOR-----------------------#
		printf "$YELLOW"	                                  #
		printf ".----------.\n"				  	  #
		printf "| Services |\n"				  	  #
		printf "*----------*\n"				  	  #
		printf "$NORMAL"                                          #
		#---------------------------------------------------------#

		# Program ran as root
		printf "$YELLOW[+]$RED Programs ran as root:$NORMAL"
		printf "\n"
		/usr/bin/find / -perm -g=s -o -perm -4000 ! -type l -maxdepth 3 -exec ls -ld {} \; 2>/dev/null # Command

		#---------------------------------------------------------#
		printf "$BLUE"	                                          #
		printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '_' #
		printf "$NORMAL"                                          #
		#---------------------------------------------------------#

		#sleep 0.2

		# System Services
		printf "$YELLOW[+]$RED System Services / init Scripts:$NORMAL"
		printf "\n"
		ls /etc/init.d/ # Command

		#---------------------------------------------------------#
		printf "$BLUE"	                                          #
		printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '_' #
		printf "$NORMAL"                                          #
		#---------------------------------------------------------#

		#sleep 0.2


#----Software INFO----------------------------------------------------------

		#printf "\n"
		#------------------YELLOW SEPARATOR-----------------------#
		printf "$YELLOW"	                                  #
		printf ".----------.\n"				  	  #
		printf "| Software |\n"				  	  #
		printf "*----------*\n"				  	  #
		printf "$NORMAL"                                          #
		#---------------------------------------------------------#

		# Mysql Version
		printf "$YELLOW[+]$RED MySql Version:$NORMAL"
		printf "\n"
		mysql --version 2>/dev/null # Command

		#---------------------------------------------------------#
		printf "$BLUE"	                                          #
		printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '_' #
		printf "$NORMAL"                                          #
		#---------------------------------------------------------#

		#sleep 0.2

		# Usefull programs & Lanugages
		printf "$YELLOW[+]$RED Usefull Programs & Languages:$NORMAL"
		printf "\n"
		which netcat 2>/dev/null # Command
		which wget 2>/dev/null # Command
		which nmap 2>/dev/null # Command
		which gcc 2>/dev/null # Command
		which python 2>/dev/null # Command
		which perl 2>/dev/null # Command
		which php 2>/dev/null # Command
		which bash 2>/dev/null # Command

		#---------------------------------------------------------#
		printf "$BLUE"	                                          #
		printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '_' #
		printf "$NORMAL"                                          #
		#---------------------------------------------------------#

		#sleep 0.2

		# Mail Info
		printf "$YELLOW[+]$RED Can We read Mail?:$NORMAL"
		printf "\n"
		ls -la /var/mail 2>/dev/null # Command

		#---------------------------------------------------------#
		printf "$BLUE"	                                          #
		printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '_' #
		printf "$NORMAL"                                          #
		#---------------------------------------------------------#

		#sleep 0.2

		#---------------------------------------------------------#
		printf "$BLUE"	                                          #
		printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '*' #
		printf "$NORMAL"                                          #
		#---------------------------------------------------------#


else
		printf "\n"
		echo "╔═╗╔╦╗╔═╗╔═╗"
		echo "║ ╦ ║ ╠╣ ║ ║"
		echo "╚═╝ ╩ ╚  ╚═╝"
fi
