
£¨1£©²é¿´Íø¿¨ĞÅÏ¢
# ifconfig -a

£¨2£©ÍøÂçÅäÖÃ
vim /etc/network/interfaces 

auto ens33
iface ens33 inet static
address 192.168.*.*
netmask 255.255.255.0
gateway 192.168.*.1

£¨3£©ÖØÆôÍøÂç
# /etc/init.d/networking restart

£¨4£©ÅäÖÃDNS

# vim /etc/resolvconf/resolv.conf.d/base
nameserver 8.8.8.8
nameserver 8.8.4.4
nameserver 192.168.*.1

£¨5£©Ë¢ĞÂÅäÖÃÎÄ¼ş
# resolvconf -u

£¨6£©¼ì²âÍøÂç
# ping www.baidu.com