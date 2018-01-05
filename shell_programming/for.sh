# * everything in the corrent directory
# for loop
for item in *
do
    if [ -d $item ]
    then
        echo $item
    fi
done
