IP=$1


(bash bbr.sh $IP 1 > bbr1.txt &) ; (bash cubic.sh $IP 1 > cubic1.txt & ) ;  (bash reno.sh  1> reno.txt &)
echo "here"
sleep 10;
(bash bbr.sh $IP 1 > bbr1.txt &) ; (bash cubic.sh $IP 8 > cubic1.txt & )
