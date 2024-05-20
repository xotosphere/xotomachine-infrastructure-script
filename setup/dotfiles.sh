###################################### CREATE FOLDER

mkdir ${USER_HOME}/.config

if [ -d "${USER_HOME}/.zshrc" ]; then
  echo -n "" >.zshrc
fi

echo "source ${USER_HOME}/.config/.zshrc" >>${USER_HOME}/.zshrc

###################################### COPY FILES

git clone --recurse-submodules https://github.com/xotomachine/xotomachine-dotfiles.git ${USER_HOME}/.config >/dev/null

git clone https://github.com/arcticicestudio/nord-tmux.git ~/.config/.tmux/plugins/nord-tmux
git clone https://github.com/tmux-plugins/tpm ~/.config/.tmux/plugins/tpm

chown $USER_NAME:${USER_GROUP} ${USER_HOME}/.config


