a=`ps -ef|awk '{print $3}'`
b=($a)
j=0
for i in ${b[@]}:
do
	if [ "$i" -eq "1" ];then
		((j++))
	fi
done
echo $j