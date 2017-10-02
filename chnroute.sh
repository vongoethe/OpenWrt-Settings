wget -O- 'http://ftp.apnic.net/apnic/stats/apnic/delegated-apnic-latest' | grep ipv4 | grep CN | awk -F\| '{ printf("%s/%d\n", $4, 32-log($5)/log(2)) }' > /tmp/chnroute.txt
mv -f /tmp/chnroute.txt /etc/chnroute.txt
/etc/init.d/shadowsocks reload
