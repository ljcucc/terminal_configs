unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac

echo ${machine};

if [[ "$machine" == "Mac" ]]; then
    echo "vimrc for mac will install..."
    sh init-mac.sh
else
    echo "vimrc for non-mac will install..."
    sh init-non-mac.sh
fi