IP=$1;
CONGESTION=$2;
FLOW=$3;
DIRECTION=$4;

if [[ "$CONGESTION" = "cubic" ]];
then
	if [[ $FLOW -gt 1 ]];
	then
		iperf3 -c $IP -p 5201 -t 30 -P $FLOW -C $CONGESTION > $DIRECTION$CONGESTION$FLOW'.txt'
	else
		iperf3 -c $IP -p 5201 -t 30 -C $CONGESTION > $DIRECTION$CONGESTION'1.txt'
    fi
elif [[ "$CONGESTION" = "reno" ]];
then
	if [[ $FLOW -gt 1 ]];
	then
		iperf3 -c $IP -p 5201 -t 30 -P $FLOW -C $CONGESTION > $DIRECTION$CONGESTION$FLOW'.txt'
	else
		iperf3 -c $IP -p 5201 -t 30 -C $CONGESTION > $DIRECTION$CONGESTION'1.txt'
    fi
elif [[ "$CONGESTION" = "bbr" ]];
then
	if [[ $FLOW -gt 1 ]];
	then
		iperf3 -c $IP -p 5201 -t 30 -P $FLOW -C $CONGESTION > $DIRECTION$CONGESTION$FLOW'.txt'
	else
		iperf3 -c $IP -p 5201 -t 30 -C $CONGESTION > $DIRECTION$CONGESTION'1.txt'
    fi

elif [[ "$CONGESTION" = "bbrplus" ]];
then
	if [[ $FLOW -gt 1 ]];
	then
		iperf3 -c $IP -p 5201 -t 30 -P $FLOW -C $CONGESTION > $DIRECTION$CONGESTION$FLOW'.txt'
	else
		iperf3 -c $IP -p 5201 -t 30 -C $CONGESTION > $DIRECTION$CONGESTION'1.txt'
    fi
elif [[ "$CONGESTION" = "tsunami" ]];
then
	if [[ $FLOW -gt 1 ]];
	then
		iperf3 -c $IP -p 5201 -t 30 -P $FLOW -C $CONGESTION > $DIRECTION$CONGESTION$FLOW'.txt'
	else
		iperf3 -c $IP -p 5201 -t 30 -C $CONGESTION > $DIRECTION$CONGESTION'1.txt'
    fi
elif [[ "$CONGESTION" = "nanqinlang" ]];
then
	if [[ $FLOW -gt 1 ]];
	then
		iperf3 -c $IP -p 5201 -t 30 -P $FLOW -C $CONGESTION > $DIRECTION$CONGESTION$FLOW'.txt'
	else
		iperf3 -c $IP -p 5201 -t 30 -C $CONGESTION > $DIRECTION$CONGESTION'1.txt'
    fi
elif [[ "$CONGESTION" = "lotserver" ]];#iperf3无法在参数中匹配
then
	if [[ $FLOW -gt 1 ]];
	then
		iperf3 -c $IP -p 5201 -t 30 -P $FLOW > $DIRECTION$CONGESTION$FLOW'.txt'
	else
		iperf3 -c $IP -p 5201 -t 30 > $DIRECTION$CONGESTION'1.txt'
    fi
fi