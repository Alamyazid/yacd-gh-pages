pkg update && pkg upgrade -y
cd
mkdir -p $HOME/.config/clash
pkg install clash
pkg install git
pkg install micro
pkg install unzip
cd .config/clash
git clone https://github.com/Alamyazid/yacd-gh-pages
cd yacd-gh-pages
cp -r -f config.yaml $HOME/.config/clash
cp -r -f Country.mmdb $HOME/.config/clash
cp -r -f vmess.yaml $HOME/.config/clash
cp -r -f trojan.yaml $HOME/.config/clash
cp -r -f trojan-go.yaml $HOME/.config/clash
cp -r -f shadowsocks.yaml $HOME/.config/clash
cp -r -f yacd-gh-pages1.zip $HOME/.config/clash
cp -r -f yacd-gh-pages2.zip $HOME/.config/clash
cp -r -f yacd-gh-pages3.zip $HOME/.config/clash
cd
cd ..
cd usr/bin
wget -O menu "https://raw.githubusercontent.com/Alamyazid/yacd-gh-pages/master/menu.sh"
chmod +x menu
cd
rm yacd.sh

