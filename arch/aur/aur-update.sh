basedir=$HOME/aur
# for dir in $(find "$basedir" -mindepth 1 -maxdepth 1 -type d); do
for dir in $(checkupdates-aur | awk '{print $1}' ); do
#  if ! $(git -C "$basedir/$dir" diff origin/master --quiet > /dev/null) ; then
    cd "$dir"
    echo -e "\e[31m Updates are available for $dir. Pulling updates.\e[0m"
    git pull origin master
    echo
    echo -e "\e[31m Rebuilding package\e[0m"
    makepkg -si
    echo
    echo -e "\e[31m New package installed\e[0m"
    echo
    echo
    cd "$basedir"
#  else
#    echo "No pending updates found for $dir."
#  fi
done
