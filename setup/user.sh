###################################### USER

groupadd $USER_GROUP &&
  adduser --quiet --disabled-password --ingroup $USER_GROUP --gecos 'Zsh User' $USER_NAME &&
  adduser $USER_NAME sudo && echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
