###################################### ZSH INSTALLATION

sudo wget -qO- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | zsh || true

###################################### ZSH THEME

ZSH_PLUGINS=$ZSH_CUSTOM/plugins && ZSH_THEMES=$ZSH_CUSTOM/themes &&
  sudo git clone --single-branch --branch '0.7.1' --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_PLUGINS/zsh-syntax-highlighting &&
  sudo git clone --single-branch --branch 'v0.6.4' --depth 1 https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_PLUGINS/zsh-autosuggestions &&
  sudo git clone https://github.com/zsh-users/zsh-history-substring-search $ZSH_PLUGINS/zsh-history-substring-search &&
  sudo git clone https://github.com/jimeh/zsh-peco-history.git $ZSH_PLUGINS/zsh-peco-history &&
  sudo git clone --single-branch --depth 1 https://github.com/romkatv/powerlevel10k.git $ZSH_THEMES/powerlevel10k
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

###################################### INSTALLING ANTIGEN

sudo curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/bin/antigen.zsh >antigen.zsh

###################################### GITSTATUS

GITSTATUS_SHA256="e33867063f091d3c31ede9916fef079ff8cd6fdcc70d051914f962ab3b8f36fd" &&
  sudo wget -nv -O gitstatus.tgz https://github.com/romkatv/gitstatus/releases/download/v${GITSTATUS_VERSION}/gitstatusd-linux-x86_64.tar.gz &&
  sudo echo "$GITSTATUS_SHA256 gitstatus.tgz" | sha256sum -c - &&
  sudo mkdir -p ./.cache/gitstatus &&
  sudo tar zxvf gitstatus.tgz --directory ./.cache/gitstatus &&
  sudo rm gitstatus.tgz

###################################### STARSHIP

# sudo sh -c "$(curl -fsSL https://starship.rs/install.sh)" -- --yes
