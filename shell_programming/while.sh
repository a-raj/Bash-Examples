##while  example
count=1
while [ $count -ne 100 ]
do
    echo $count
    count=`expr $count + 1`
done
