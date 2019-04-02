sysctl net.ipv4.ip_forward=1
iptables -A PREROUTING -t nat -i wlp6s0 -p tcp -d 195.251.209.201 --dport 5000 -j DNAT --to 10.0.0.200:8080
iptables -A PREROUTING -t nat -i wlp6s0 -p tcp -d 195.251.209.201 --dport 5001 -j DNAT --to 10.0.0.2:8080
iptables -A PREROUTING -t nat -i wlp6s0 -p tcp -d 195.251.209.201 --dport 5002 -j DNAT --to 10.0.0.3:8080
iptables -A PREROUTING -t nat -i wlp6s0 -p tcp -d 195.251.209.201 --dport 5003 -j DNAT --to 10.0.0.4:8080
iptables -A PREROUTING -t nat -i wlp6s0 -p tcp -d 195.251.209.201 --dport 5004 -j DNAT --to 10.0.0.5:8080

iptables -A FORWARD -i wlp6s0 -p tcp -d 195.251.209.201 --dport 5000 -j ACCEPT
iptables -A FORWARD -i wlp6s0 -p tcp -d 195.251.209.201 --dport 5001 -j ACCEPT
iptables -A FORWARD -i wlp6s0 -p tcp -d 195.251.209.201 --dport 5002 -j ACCEPT
iptables -A FORWARD -i wlp6s0 -p tcp -d 195.251.209.201 --dport 5003 -j ACCEPT
iptables -A FORWARD -i wlp6s0 -p tcp -d 195.251.209.201 --dport 5004 -j ACCEPT

iptables -t nat -A POSTROUTING -j MASQUERADE
