ip addr show dev eth1 | grep 192.1.33.254 || ip addr add 192.1.33.254/24 dev eth1
ip addr show dev eth1 | grep 192.1.2.250 || ip addr add 192.1.3.250/24 dev eth0
iptables -t nat -F
iptables -F
iptables -X
iptables -t nat -A POSTROUTING -p udp --sport 4500 -j SNAT --to-source 192.1.2.254:3503-3504
iptables -t nat -A POSTROUTING -p udp --sport 500 -j SNAT --to-source 192.1.2.254:2503-2504
iptables -t nat -A POSTROUTING --destination 0.0.0.0/0 -j SNAT --to-source 192.1.2.254
iptables -t nat -L -n
iptables -L -n
echo initdone
: ==== end ====
