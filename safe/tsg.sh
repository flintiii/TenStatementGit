git remote add origin git@github.com:flintiii/TenStatementGit.git
git branch -M main
git push -u origin main


echo "# TenStatementGit starts 2023-02-14" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:flintiii/TenStatementGit.git
git push -u origin main



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
# Noecho "# TenStatementGit" >> README.md
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
FNAME=$var2
echo "Is this the right name "$FNAME
#D 
spause
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
if [ "$#" -eq "1" ] && [ "$1" = "adalias"     ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "lentry"      ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "fxtpi"      ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "ibonjour"    ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "update"      ]; then ARGS="1"; fi
if [ "$#" -eq "2" ] && [ "$1" = "flink"       ]; then ARGS="2"; fi
if [ "$#" -eq "2" ] && [ "$1" = "flunk"       ]; then ARGS="2"; fi
if [ "$#" -eq "1" ] && [ "$1" = "bupdate"     ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "bu2usb"      ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "bufrusb"     ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "setalias"    ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "bookmarks"   ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "dummy"       ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "uroot"       ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "spause"      ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "sane"        ]; then ARGS="1"; fi
if [ "$#" -eq "1" ] && [ "$1" = "help"        ]; then ARGS="9"; fi
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
      *) clear; cat $0 | grep '^## '| sed -e 's/##//'; exit 1;; # Anything else run help and exit...
esac # End main loop. TEST: ?fill in test?
#
# echo " "; echo "On "$(date +%F\ %r) $0" version "$version" stops"
#debug echo  "That's all folks!!"
#
#* restore environment cd "$S"
