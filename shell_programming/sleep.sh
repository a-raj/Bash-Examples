#sleep.sh
echo "Enter the sentance:\c"
read str
for word in $str
do
    echo $word
    sleep 2
done
