#/usr/bin/sh

echo "start..."
cd ~/workspace/vim/
git pull
cp ~/.vimrc .
git add --a
git co -m $1
git push origin master
echo "done"
