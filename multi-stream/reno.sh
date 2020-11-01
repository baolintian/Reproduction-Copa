IP=$1
FLOW=$2
iperf3 -c $IP -t 30 -C reno -p 5203 -P $FLOW