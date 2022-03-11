pkg update && pkg upgrade -y
mkdir -p $HOME/.config/clash
pkg install clash
pkg install git
pkg install micro
cd .config/clash
git clone https://github.com/Alamyazid/yacd-gh-pages
cd yacd-gh-pages
cp -r -f config.yaml $HOME/.config/clash
cp -r -f vmess.yaml $HOME/.config/clash
cp -r -f trojan.yaml $HOME/.config/clash
cd
rm yacd.sh

