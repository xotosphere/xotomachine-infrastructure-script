###################################################### ENV

USER_NAME=$1

echo 'USER_NAME=$USER_NAME' >>/etc/environment

# SET HOME ENV
if [ "$USER_NAME" = "root" ]; then
  echo "USER_HOME=/$USER_NAME" >>/etc/environment
  echo "ZSH_CUSTOM=/$USER_NAME/.oh-my-zsh/custom" >>/etc/environment
else
  echo "USER_HOME=/home/$USER_NAME" >>/etc/environment
  echo "ZSH_CUSTOM=/home/$USER_NAME/.oh-my-zsh/custom" >>/etc/environment
fi

# PROFILE
echo "EMAIL=xotomachine@gmail.com" >>/etc/environment
echo "NAME=xotomachine" >>/etc/environment
echo "USER_GROUP=machine" >>/etc/environment

# VERSIONS
echo "NVM_VERSION=0.33.2" >>/etc/environment
echo "NEOVIM_VERSION=0.7.0" >>/etc/environment
echo "YARN_VERSION=1.8.0" >>/etc/environment
echo "POSTGRES_VERSION=12" >>/etc/environment
echo "JAVA_VERSION=11" >>/etc/environment
echo "RUBBY_VERSION=2.1.1" >>/etc/environment
echo "NERDS_FONT_VERSION=2.1.0" >>/etc/environment
echo "FZF_VERSION=0.21.1" >>/etc/environment
echo "GITSTATUS_VERSION=1.0.0" >>/etc/environment

# ENVIRONMENT VARS
echo "DOTFILE_REPO=https://github.com/xotomachine/xotomachine-dotfiles.git" >>/etc/environment

###################################################### setup script

sudo chmod a+x ./xotomachine-script/setup/*.sh

######################################################

sudo sh ./xotomachine-script/setup/root.sh

######################################################

sudo sh ./xotomachine-script/setup/apts.sh
sudo sh ./xotomachine-script/setup/language.sh
sudo sh ./xotomachine-script/setup/database.sh
sudo sh ./xotomachine-script/setup/zsh.sh
sudo sh ./xotomachine-script/setup/dotfiles.sh
sudo sh ./xotomachine-script/setup/package.sh
sudo sh ./xotomachine-script/setup/ccat.sh

cp -o $USER_NAME ./xotomachine-script/setup/ccat /usr/local/bin/
sudo sh ./xotomachine-script/setup/clean.sh

zsh

######################################################

echo " ___________________   ";
echo "	< FINISHED >         ";
echo " -------------------   ";
echo "   \                   ";
echo "    \                  ";
echo "        .--.           ";
echo "       |o_o |          ";
echo "       |:_/ |          ";
echo "      //   \ \         ";
echo "     (|     | )        ";