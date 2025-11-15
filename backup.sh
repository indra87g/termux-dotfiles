DIR="$(pwd)"
NOW=$(date +"%Y-%m-%d %H:%M")

echo "Starting dotfiles backup at $NOW"

for f in .config/fastfetch .config/mc; do
    if  [ -d "$f" ]; then
        echo "Folder '$f' is already exist!"
    else 
        echo "Folder '$f' is not exist!"
        mkdir -p "$f"
    fi
done

cp ~/.bashrc ~/dotfiles
cp ~/.gitconfig ~/dotfiles
cp -r ~/.config/fastfetch/* ~/dotfiles/.config/fastfetch
cp -r ~/.config/mc/* ~/dotfiles/.config/mc

read -p "Commit the change? (y/n) " yn

if [[ "$yn" == "y" ]]; then
    git add .
    git commit -m "dotfiles backup at $NOW"
    git status
    echo "Change commited!"
elif [[ "$yn" == "n" ]]; then
    echo "Commit canceled!"
else
    echo "Select y/n!"
fi
