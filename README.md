# auto install clash for termux

$ pkg install wget

$ wget https://raw.githubusercontent.com/Alamyazid/yacd-gh-pages/master/yacd.sh && chmod +x yacd.sh && ./yacd.sh

#edit config vmess dengan perintah
$ micro .config/clash/config.yaml
#cara simpan tekan ctrl + s & ctrl + p

#set di proxy & port di aksespoinname/apn.

proxy:127.0.0.1
port:10809


#jalankan clash di termux

$clash

#buka fitur clash di Browser
http://127.0.0.1:9090/ui/#/proxies
