# auto install clash for termux

$ wget https://raw.githubusercontent.com/Alamyazid/yacd-gh-pages/master/yacd.sh && chmod +x yacd.sh && ./yacd.sh

#set di proxy & port di aksespoinname/apn.

proxy:127.0.0.1
port:10809

#jalankan clash di termux

$ clash

#buka fitur clash di Browser
http://127.0.0.1:9090/ui/#/proxies

Note:
Jika ingin edit config.yaml

$ cd .cinfig/clash/config.yaml

Jika selesai silahkan ketik ctrl + x + y enter.
