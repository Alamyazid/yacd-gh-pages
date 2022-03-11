pkg update && pkg upgrade -y
mkdir -p $HOME/.config/clash
pkg install clash
pkg install git
cd .config/clash
git clone https://github.com/Alamyazid/yacd-gh-pages
cd yacd-gh-pages
cp -r -f config.yaml $HOME/.config/clash
cd
rm yacd.sh

