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

exec < $fname

count=1

while read line
do
    echo $count.$line
    count=$(expr $count + 1)
done

#restoring terminal settings
exec < $terminal
