pkg update && pkg upgrade -y
mkdir -p $HOME/.config/clash
pkg install clash
pkg install git
pkg install micro
cd .config
cd clash
git clone https://github.com/Alamyazid/yacd-gh-pages
mv -r -f config.yaml $HOME/.config/clash
cd
rm yacd.sh