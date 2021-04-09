echo "Welcome to Flip coin combination problem"
echo -e

	headCount=0
	tailCount=0

	read -p "enter number of times to flip coin = " num
	echo -e
	for i in `seq $num`
	do
		flip=$((1+RANDOM%2))
		if [ $flip -eq 1 ]
		then
			((headCount++))
			singlet[H]=$headCount
		else
			((tailCount++))
			singlet[T]=$tailCount
		fi
	done
