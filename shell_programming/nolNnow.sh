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
