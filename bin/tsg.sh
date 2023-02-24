#!/bin/bash
version="0.001"
#
# pflint
# Fri 24 Feb 2023 02:58:35 PM EST 
#D echo "hello"
#D echo "version =" $version
#
#
function help(){
#* function help  - Help function for template basic help goes here
clear;
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version
#
cat $0 | grep '^## ' | sed -e 's/##//'
# echo "This is the help function"
##           *****DOCUMENTATION*****
## You get this when you put in the wrong number or type of arguments...
## The name of this program is tsg.sh, an extention of unix find.
## Theis is released under GPL I
## The syntax is:
# help  - Help function for template basic help goes here
## - dummy 		-Rename and fill stuff in between braces
## - flit 		-moves directory and download directory from git
## - chkarg	   	-Checks argument for path...
## - wierd 		-Rename and fill stuff in between braces
## - mw1			-Rename and fill stuff in between braces
## - uroot 		-Checks to see if you are root
## - spause	   	-A simple tarry...
## - sane 		-Check location of vital files and programs
## - flink 		-Adds adds two symlinks to public
## - flunk 		-Un-Symlinks [file] & [file].sh into $PATH
## *** NOTE *** These commands need not be run as root, but installing sane code!
##
## For structure information type "grep '^\#\*' tsg.sh"
#
} # Test: tsg.sh help 
#
#
function dummy(){
#* function dummy - Rename and fill stuff in between braces
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
} # Test: tsg.sh dummy
#
#
function flit(){
#* function flit - moves directory and download directory from git
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
} # Test: tsg.sh flit <dir>
#
#
function chkarg(){
#* function chkarg   - checks argument for path...
STR='/'
echo $STR
if [[ "$STR" == *"$var2"* ]]; then
  echo "It's there."
fi
#
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
} # Test: tsg.sh chkarg

2>/dev/null << cut
#
# git remote add origin git@github.com:flintiii/TenStatementGit.git
# git branch -M main
# git push -u origin main

# Na... Not yet, start with a clone...
echo "# TenStatementGit starts 2023-02-14" >> README.md
# git init
# git add README.md
# git commit -m "first commit"
# git branch -M main
# git remote add origin git@github.com:flintiii/TenStatementGit.git
# git push -u ogh auth login --with-token < mytoken.txtrigin main
# 
# sudo apt update
# sudo apt install gh


# SOURCE: https://github.com/cli/cli/blob/trunk/docs/install_linux.md
type -p curl >/dev/null || sudo apt install curl -y
curl -fsSL https://#!/bin/bash
version="0.04"
#

gh auth login --with-token < mytoken.txt
To use gh in GitHub Actions, add GH_TOKEN: ${{ github.token }} to "env".

GH_TOKEN: ${{ github.token }}


Could not resolve host: githecho "version =" $version
#ub.com

cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y
#
function wierd(){
#* function wierd - Rename and fill stuff in between braces
# Adds adds two symlinks to public
# This function, which runs as root, will make the program, 
# which must end in sh executable and then
# then the function adds two symlinks to the first element
# of the $PATH variable linking the argument and the argument suffixed with "sh"
# both linked to the second script element (hopefully /usr/local/bin).
# echo  "into root"
# sudo bash
# echo  "outa root"
uroot
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
# Noecho "# TenStatementGit" >> README.md
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
} # Test: tsg.sh dummy
#
#
function mw1(){
#* function mw1 - Rename and fill stuff in between braces

git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:flintiii/TenStatementGit.git
git push -u origin mainte user must be "$USER", fix in 2.0
# trap "set +x; sleep 5; set -x" DEBUG
HMDIR=$(pwd) # 
echo $HMDIR
echo $var2
spause
} # Test: mw1.sh <filename>
#
	#
cut
#
#####################################STANDARD AND MAYBE USEFUL FUNCTIONS BELOW
#
#* function uroot - Checks to see if you are root
function uroot(){
# echo "Make sure only root can run script"
if [ "$(id -u)" != "0" ]; then
   echo "This script needs to run as root and you are not root" 1>&2; 
   spause
   exit
else
   echo "This script needs to run as root but that's OK as you are root" 1>&2
fi
} # Test:~flint/bin/mtoc.sh uroot
#
#* function spause   - A simple tarry...
function spause(){
   # -t sets time
   # read -t $pt -p "$*" ans
   read -p "Hit enter to continue..." ans
   echo $ans
}
#
function sane(){
#* function sane - check location of vital files and programs, sanity check
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
rm -rf need > /dev/null
for prog in openssh-server gparted nautilus pluma git snmp gedit "less" "wget" 
#d ;do echo $prog; done
#D banana # programs you need put here
do
	# echo $prog
	# Better SOURCE:https://www.cyberciti.biz/faq/find-out-if-package-is-installed-in-linux/
	answer=$(echo $(dpkg-query -W -f='${Status} ${Version}\n' $prog)| cut -d " " -f 3)
	# echo $answer 
	if [ "$answer" != "installed" ];
	then
	    echo $prog >> need
	    #debug echo "Type \"sudo apt-get install $prog\" to fix this."
	    #debug spause
	    # exit 0
	fi
done
#D clear
echo "Welcome to $0!"
# uroot
echo "Missing programs:"
	if [ -f need ];
	then
	   echo "    This program needs the following program(s) to be installed on this system."
	   cat need |while read line; do echo -e \\t" - " $line; done
	   if [ "$(id -u)" != "0" ]; then
   		echo "This script needs to run as root and you are not root" 1>&2
	        echo "You want them installed if you are root they will install"
		echo "Leaving this function without installing anything"
		exit
	   fi
	   spause
	   cat need |while read line; do 
		echo "apt-get --yes install $line"
		apt-get --yes install $line 
	   done
	   #D 
	   rm -rf need
	   exit 0 # breaks you out of loop...
	else
	   echo " * None *  Looks like the pot's right, lets play!"
	fi
#
echo "end of check"
} # Test: finagrade.sh sane
#
function flink(){
#* function flink - Adds adds two symlinks to public
# This function, which runs as root, will make the program, 
# which must end in sh executable and then
# then the function adds two symlinks to the first element
# of the $PATH variable linking the argument and the argument suffixed with "sh"
# both linked to the second script element (hopefully /usr/local/bin).
# echo  "into root"
# sudo bash
# echo  "outa root"
uroot
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
# Note user must be "$USER", fix in 2.0
# trap "set +x; sleep 5; set -x" DEBUG
HMDIR=$(pwd) # 
echo $HMDIR
echo $var2
spause
FNAME=$var2
# echo "Is this the right name "$FNAME
echo "Is this the right name "$FNAME
#D spause
# echo $PWD | cut -d ":" -f 3
LKDIR="/usr/local/sbin"
echo $LKDIR
spause
# echo "removing "$HMDIR"/fu.sh"; rm  $HMDIR/fu.sh 2>/dev/null
cd $HMDIR/bin
echo $PWD" should be the home bin"
echo $PATH" should be the overall path for "$USER
#D ls -alt $HMDIRs
cd $LKDIR
sudo ln -s $HMDIR/$FNAME .
# sudo ls -alt $LKDIR/$FNAME
cd ~
echo -n "keep in mind you are in your home directory now..."
# 
spause
} # Test: finagrade.sh flink <filename>
#
#
function flunk(){
#* function flunk - Un-Symlinks [file] & [file].sh into $PATH
echo "This is the \""$FUNCNAME"\" function in "$0" version "$version #debug
uroot
echo $var2
spause
FNAME=$var2
echo "Is this the right name "$FNAME
#D 
spause
echo "rm /usr/local/sbin/$FNAME -Do This?"
spause
sudo rm /usr/local/sbin/$FNAME
} # Test: finagrade.sh <filename>
#
#*###################################### MAIN ENTRY POINT AND COMPOUND CASE
#
#* Evaluator Routine
# Note the evaluator allows for many cases and error checking...
#d ARGS=$#         # carries the number of args into the functions...
#D echo $#"     "$1"    "$2"    "$3"    "$ARGS ;spause 
if [ "$#" -eq "1" ] && [ "$1" = "help"      ]; then ARGS="1"; fi 
if [ "$#" -eq "1" ] && [ "$1" = "dummy"     ]; then ARGS="1"; fi 
if [ "$#" -eq "1" ] && [ "$1" = "flit"      ]; then ARGS="1"; fi 
if [ "$#" -eq "1" ] && [ "$1" = "chkarg"    ]; then ARGS="1"; fi 
if [ "$#" -eq "1" ] && [ "$1" = "wierd"     ]; then ARGS="1"; fi 
if [ "$#" -eq "1" ] && [ "$1" = "mw1"       ]; then ARGS="1"; fi 
if [ "$#" -eq "1" ] && [ "$1" = "uroot"     ]; then ARGS="1"; fi 
if [ "$#" -eq "1" ] && [ "$1" = "spause"    ]; then ARGS="1"; fi 
if [ "$#" -eq "1" ] && [ "$1" = "sane"      ]; then ARGS="1"; fi 
if [ "$#" -eq "1" ] && [ "$1" = "flink"     ]; then ARGS="1"; fi 
if [ "$#" -eq "1" ] && [ "$1" = "flunk"     ]; then ARGS="1"; fi 
if [ "$#" -eq "1" ] && [ "$1" = "help"      ]; then ARGS="9"; fi
# if [ "it clone https://github.com/flintiii/bin.git ~/.$#" -eq "1" ] && [ "$1" = "flit"        ]; then ARGS="1"; fi
# this tests the evaluator...
#D echo $#"     "$1"    "$2"    "$3"    "$ARGS ;spause 
#
#* Dispatcher Routing
# typical cases, be careful to make your own...
case "$ARGS" in
    "0") clear; $1="help"; exit 1;;     # got nothing, display help and go
    "1") $1 ;;  # run the command
    "2") var2=$2;  $1 ;;    # run the command with an argument
    "3") var3=$3; var2=$2;  $1 ;;       # run the command with two arguments
    "4") var4=$4; var3=$3; var2=$2;  $1 ;;          # run the command with three arguments
    "5") prompt=$2; $1 ;;   # run the command with a different argument
    "6") time=$3; prompt=$2;  $1 ;;     # run the command with two different arguments
    "7") flint_short_vita_2017-07-01.odtdefvbl; $1 ;;           # run the command and default variables
    "8") var2=$2;  $1 ;;    # run the command and settle variables
    "9") var3=$3; var2=$2;  $1 ;;       # run the command and settle variables
    "9") var3=$3; var2=$2;  $1 ;;       # run the command and settle variables
      *) clear; help
# it clone https://github.com/flintiii/bin.git ~/. clear; cat $0 | grep '^## '| sed -e 's/##//'; exit 1;; # Anything else run help and exit...
esac # End main loop. TEST: ?fill in test?
#
# echo " "; echo "On "$(date +%F\ %r) $0" version "$version" stops"
#debug echo  "That's all folks!!"
#
#* restore environment cd "$S"
# cut
# chkarg
