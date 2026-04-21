if [ $# -eq 0 ]
then
echo "syntax is <$0><filename>"
exit 1
fi
if [ ! -f $1 ]
then echo "file doesnt exit "
exit 1
fi
echo "------------original file content------------"
cat $1
grep -v  -i "linux" $1> temp.txt
mv temp.txt $1
echo "--------------updated file conant after deleting lines contain linux--------------------"
cat $1 
