
IP=$1
FLOW =$2
iperf3 -c $IP -t 30 -C cubic -P $FLOW -p 5201