IP=$1

(bash bbr.sh $IP 1 > bbr1.txt &) ; (bash cubic.sh $IP 1 > cubic1.txt & ) ;  (bash reno.sh $IP 1 > reno.txt &)
echo "here"
sleep 40;
(bash bbr.sh $IP 1 > bbr2.txt &) ; (bash cubic.sh $IP 8 > cubic2.txt & )
