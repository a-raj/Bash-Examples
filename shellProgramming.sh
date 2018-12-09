
# 1. cal command
# to view the calander of a particular month
cal 6 2009
cal feb 2033


# 2. date command
date

# to view it in a particular format %m for month and %y for year %n for new line 
date '+DATE: %m-%y %nTIME: %H:%M:%S'


# 3. touch command it is use to crate a empty file, below 3 files will be created 
touch file1 file2 file3


# 4. mkdir: to make a directory or folder
mkdir test 
mkdir Documents/Test_Folder


# 5. cd: change directory 


# 6. cat: 
cat < file_name # take the input from the file and show it in my screen
cat > file_name # take the input from the console and save it in the file name file_name
cat file_name # search a file with file name and show it
cat file_name_1 file_name_2 > file3 # to mearage two files
# cltr + D: End of document


# 7. mv: rename a file
mv file_name_old file_name_new


# 8. rm: remove
rm file_name # remove file
rm -r directory_name # remove directory
rmdir directory_name # remove directory


# 9. cp: copy file from one loaction to another
cp file_name directory_name 


# 10. mv: move file form one location to another
mv file_name directory_name 


# 11. links 
# hard and soft
ln file_name another_file_name 
# it will create a hard link which is a replica of a file(file_name) i.e. changes in one file will refelect in another file & wont be deleted if one is deleted  also it will occupied the same space as the root file or dir

ln -s file_name link_name # this will create the soft link of the original file (shortcuts) 


# 12. File permission rwx in binary 111 mean 7 in decimal owner group and other so 777
# read (4),  write (2) and execute (1) all have ceratin numeric values : total numeric value will be 7


# 13. unmask: 4 ditig number, when a file is created what unix does is it substract the umask from value 666 for a file and 777 for a dir


# 14. ls: tell me all the files and folder in the home dir
ls directory_name # give the list of files and folder 
ls -l # l mean long listing give the details of the files
ls -a # l mean all, show all the files and folder in the dir also hiden one


# 15. chmode: change file or dir permission
chmode 777


# 16. uname -a
# -a mean all, show what is your kernal and processors are


# 17. file * : It tells about what type of file you have ie file encoding and type


# 18. wc: word count 
wc fileName # first it tells about number of line, 2nd no of words and 3rd the number of alphabets in your test file.
wc -l file_name # just print the line
wc -w file_name # number of words
wc -c file_name # number of characters


# 19. sort
sort file_name # it will show the alphabetcal sorted o/p of file
sort # then it will wait for the input from the consol, which it will sort


# 20. cut: used for filtering text
cut # default it will treat tab as a delimeter
cut -d"-" -f 1,3 file_name # -d mean delimeter and then provide the delimeter -f to tell extract the fields then provide the fiels number that after seperating delimeter

######### e.g. ###########
$ cat players
Name-Sport-Age
Roger-Tennis-30
Ragel Naddal-Tennis-25
Tiger Woods-Golf-37
Michael Phelps-Swimmer-27
Kobe-Basketvball-34

$ cut -d"-" -f 1,3 players
Name-Age
Roger-30
Ragel Naddal-25
Tiger Woods-37
Michael Phelps-27
Kobe-34
########## e.g. end ########


# 21. dd: used for conversion
dd if=inputFileName of=OutputFileName conv=ucase # if mean input file, op mean output file, conv mean convert, ucase mean upper case
# also use to format pendrives

dd if=inputFileName of=OutputFileName conv=ebcdic # convertng to european character encoding format
# use file * to check the format then we get  Non-ISO extended-ASCII text, with NEL line terminators


# 22. man: short for manual command
# man is the help repository for the command in unix
man command_name # it will open all manual for the command


# 23. bannder: 
banner "bye bye" # this will display 10 char in a line 
banner bye bye # this will splits the bye bye and shows it


# 24. compress: 
compress -v file_name # -v is for shell to show the %age of compression


# 25. uncompress: To decompress
uncompress file_name.z


# 26. zcat: to see the compress file without uncompressing it
zcat file_name.z

# --------------------------------------------------------

# $0 - The filename of the current script.|
# $n - The Nth argument passed to script was invoked or function was called.|
# $# - The number of argument passed to script or function.|
# $@ - All arguments passed to script or function.|
# $* - All arguments passed to script or function.|
# $? - The exit status of the last command executed.|
# $$ - The process ID of the current shell. For shell scripts, this is the process ID under which they are executing.|
# $! - The process number of the last background command.|

echo "Script Name: $0"
function func {
    for var in $*
    do
        let i=i+1
        echo "The \$${i} argument is: ${var}"
    done
    echo "Total count of arguments: $#"
}
func We are argument

#############################

# use "-e" to test if file exist

# use "-d" to test if directory exists

# use "-r" to test if file has read permission for the user running the script/test

filename="sample.md"
if [ -e "$filename" ]; then
    echo "$filename exists as a file"
fi

# --------------------------------------------


############################### Shell programming ###########################

No multiline comment

# To excute the script file 
sh fileName.sh : 

# ----------------------

# this is comment
echo "Hello World"


# 2nd program
pwd
ls -l
banner "The End"


# 3rd program Demonstrate the read a user input
# variables are case sensitive
# we can use _var1
# echo by default put a new line char at the end
# to access the variable use $variableName
echo "Plese enter your name"
read my_name
echo "Hello $my_name, How are you?"


# 4th program
#This file take a file name as an argument and rename it.
# Positionals parameters : system variables that holds the value while running the shell i.e sh fileName argument1 argument2 : here argument1 and argument2 are postional parameter
mv $1 $2
cat $2

# to execute sh ss4.sh test output : it will rename the test to output


# 5th programm : Changing the permission of the file
# 744 : 7 mean the owner of the file has rwx permissions
chmod 744 $1
ls -l $1


# This will set the $1 as Positionals $2 as parameters and so on
# it will be available in the console
set Positionals parameters example

# Setting postional parameter from the a file
# Usign reverse code ``
set `cat test`


# 6th programm.
#Ranames the file to file.name where name is the login name of the user executing the script
name=$1
set `who am i`
mv $name $name.$1
# to execute sh ss6.sh fileNameToBeRenamed


# $# : shows total number of positional parameter
# 7th program
echo The total number of items in the current directort is=$#
# to execute this : sh ss7.sh *


# 8th program : Arithmetic operation
# To tell shell something is mathmatical expression we use expr
echo "Provid the 1st number"
read a
echo "Provid the 2nd number"
read b
echo `expr $a + $b`
echo `expr $a - $b`
echo `expr $a \* $b`
echo `expr $a / $b`
echo `expr $a % $b`


# 9th program
# bc : , Pipe sysmbol | 
# Floating Point Arithmetic
a=10.5
b=3.5
c=`echo $a + $b | bc`
d=`echo $a - $b | bc`
e=`echo $a \* $b | bc`
f=`echo $a / $b | bc`
echo $c $d $e $f


# 10th program
# escape secquence
# \r : carry return : it will not print the before part of \r and then overwrite it with after part of \r
# \t : horizontal tab
# \b : backspace it will work as backspace
# \033[1m : add this before a sentance to make it bold
# \033[0m : to get back to the normal mode
# 7m
echo "\033[1mHey World, \nWhat's up?\033[0m"
echo "\033[7mHey World, \nWhat's up?\033[0m"


# 11 the program
# tput command : very 
# tput in action
# tput clear clear the screen even $ symbol
# cup to move the cursor to a particular row and colums 
tput clear 
echo "Total number of rows on screen=\c"
tput lines
echo "Total number of colums on screen=\c"
tput cols
tput cup 15 20
tput bold
echo "This should be in bold"
echo "\033[0mBye Bye"

# 0 if command has been executed successfully else 1, to check $?


# 12th
## if else statement
echo "Enter source and target file name."
read source target
if mv $source $target
then
    echo "Your file has been successfully renamed."
else
    echo "Your file could be renamed."
fi


# d if else and ifelse
echo "Enter the number between 10 and 20:\c"
read num
if [ $num -ls 10 ]
then
    echo "That was under the belt partner."
elif [ $num -gt 20 ]
then
    echo "That went over my head."
else 
    echo "Now you are making sense!"
fi


##### Files #####
# in unix dir is also treated as files
# block special file
# character file

#-f check wherter file exist of file name or not
# file-test.sh
# -d to check dir
# -c for character special file
# -b for block special file i.e images and videos
# -r to check read permison
# -w to check write permison
# -x for execute permison
# -s for check file size is > 0 or not

echo "Enter a name:\c"
read fname
if [ -f $fname ]
then
    echo "You indeed entered a file name."
else
    echo "Don't provid me crazy inputs."
fi



# chmode +w fineName : give write permission to the file

echo "Enter file name:\c"
read fname
if [ -f $fname ]
then
    if [ -w $fname ]
    then
        echo "Type matter to append. To quit press ctrl+d"
        cat >> $fname
    else
        echo "You don't have permission to write."
    fi
fi


# -n stringVarName : to check if length of string is > 0 or not equal to 0
# -z stringVarName : length is 0 or not

# -a : and i.e &&
# -o : or i.e || 

# check if the input is a character or not, -2 eof is also added at the end.
echo "Enter a lowecase character:\c"
read var
if [ `echo $var | wc -c` -eq 2 ]
then 
    echo "You entered a character."
else
    echo "Invalid input."
fi


# ? mean one character, it is a substitution for one char like * for all the char
## case
echo "Enter a character:\c"
read var
case $var in
[a-z])
    echo "You entered a lower case alphabet."
    ;;
[A-Z])
    echo "You entered an upper case alphabet."
    ;;
[0-9])
    echo "You entered a digit."
    ;;
?)
    echo "You entered a special symbol"
    ;;
*)
    echo "You entered more than one characters."
    ;;
esac


##while  example
count=1
while [ $count -ne 100 ]
do
    echo $count
    count=`expr $count + 1`
done

# until loop : opposite of while, the loop continues when condition is false
# * everything in the corrent directory
# for loop : show all the directory in the current directory
for item in *
do
    if [ -d $item ]
    then
        echo $item
    fi
done


# exit status 2 ($?) output mean you done something illegal
# e.g eq.sh
a=4.5
b=4.5
[ $a -eq $b ]
    echo $?

# this will give the output 
        # eq.sh: 3: [: Illegal number: 4.5
        # 2

# Reason for this is unix save the number as string and not as a numberical value
# right way to do it
a=4.5
b=4.5
[ "$a" = "$b" ]
    echo $?

######## grep : globally search with regular expression
# we use grep to search patter in text file
# grep -i -n searched_text fileName
# -i : ingore case
# -n : shows line number along with the line in which search text is present
# -c : shows total line in which search text present
# -v : reverse search mean don't have the search text


######## passwd file 
# it is in /etc/passwd
# username:
# x mean password is encrypted
# someNumber (user id : group id) : user ID for root its 0, 1 to 99 are userd for predefined accounts used by the system
# :TheNameOfTheComputer (5th field)
# home folder (6th field)
# bin/bash : it tells the program which execte the 


# IFS : interna Field Separator
# it use to seperate the file or string
# e.g
line="Shell:Scripting:is:fun"
IFS=:
set $line
echo $1
echo $2




# pinfo.sh
#Extract information form the passwd file and show it to the user
echo "Enter Username:\c"
read logname
line=`grep $logname /etc/passwd`
IFS=:
set $line
echo "Username:$1"
echo "User ID:$3"
echo "Group ID:$4"
echo "Comment Field:$5"
echo "Home Folder:$6"
echo "Default Shell:$7"

#---------------------------------------------

# exec < filename [other input medium ie terminal] : to take input form a text file rather than a keyboard (switching input stream) 
# tty : contains the current terminal settings

# Reading input from a file i.e changing current input stream (i.e keyboard) to file and restoring it back
#read.sh
echo "Enter the filename:\c"
read fname
# Check file size
if [ -z "$fname" ]; then
    exit
fi

# saving current terminal settings to a variable
terminal=`tty`

#switching input stream
exec < $fname

count=1

while read line
do
    echo $count.$line
    count=$(expr $count + 1)
done

#restoring terminal settings (switching back to terminal stream)
exec < $terminal

#---------------------------------------------

# sleep numberOfSec : used to produce time delay in shell script

#sleep.sh
echo "Enter the sentance:\c"
read str
for word in $str
do
    echo $word
    sleep 2
done

#------------------------------------------

#find number of line and words in a file
#nolNnow.sh
echo "Enter the filename:\c"
read fname

terminal=`tty`

exec < $fname

nol=0
now=0

while read line
do
    nol=$(expr $nol + 1)
    set $line
    now=$(expr $now + $#)
done

echo "Number of line:$nol"
echo "Number of words:$now"

exec < $terminal

#-----------------------------------------

# sudo login : to login to another user 


# write : use to communicate with the other user in the system
# couple of condition before d write
# 1. recipient user must be logged in, if not then an error msg will be displayed
# 2. Recipient user must have enable message reception 

#
# write receptionName(userName) : if user has enable message reception then you can write the message else show an error that user has not enable message reception

# mesg y : to enable message reception
# mesg n : to disable

# finger : which user have given permission to connect with them and which have disablel message reception (tty column contains * mean disable)


#when you sh to invoke a script the shell invokes a subshell then it invokes the script and the function and variables that are declared by script are not accessable that invoke the  shell
# to resolve this by giving execteable permisson to the script
chmod +x script.sh
# . script.sh : this will execute the script and those function will be available in the terminal (kind of creating your own commnads)

# to remove a function from the memory
unset functionName



#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

unset variables # Use unset command to delete the variables during program execution. It can remove both functions and shell variables. 


## >> : append in file
## > : write to a file if exists overwrite
## export : creates a global variable
## =~ : regular expression match operator


## To remove entire directories, use the "-r" command line option: rm -r dirName


# The rm command is used to delete files. ``rm -i'' will ask before deleting each file; 
# you may well have rm aliased to do this automatically. ``rm -r'' will recursively delete a directory and all its contents 
# (normally rm will not delete directories, while rmdir will only delete empty directories). 
# ``rm -f'' will forcibly delete files without asking; this is mostly useful if you have rm aliased to ``rm -i'' but want to delete lots of files without confirming each one.



# to replace a text with other text in a files
sed -i 's/original/new/g' file.txt

# Explanation:
#    sed = Stream EDitor
#    -i = in-place (i.e. save back to the original file)

#    The command string:
#        s = the substitute command
#        original = a regular expression describing the word to replace (or just the word itself)
#        new = the text to replace it with
#        g = global (i.e. replace all and not just the first occurrence)

#    file.txt = the file name


 
 vi ~/.bashrc   # : bash file where you can add aliaias 
 source ~/.bashrc  # : reload the file


 wget "https://192.168.4.59/CRMS/Installer/crmsui_config.php" --no-check-certificate # For downloading something from a website


# To change the owner 
chown ownerName fileName/directoryName
