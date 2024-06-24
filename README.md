<h1 align="center">Welcome to the XotoMachines Script! 👋</h1>
> 💨 ubuntu machine script

### 🤷🏼‍♂️ PREREQUISITE
- Bash

### ✅ RUN WITH BASH
``` shell
# one liner after cd into : ~ folder
git clone https://github.com/xotosphere/xotomachine-infrastructure-script.git && sh ./xotomachine-infrastructure-script/setup.sh username
```

### 👾 INSTALL NVIM PACKER

```shell
# SYNC ALL PLUGS
nvim +PackerSync
```

### 📚 INSTALL NVIM LSP

Enter `:LspInstall` followed by the name of the server you want to install<br>
Example: `:LspInstall pyright`

```shell
# INSTALL LSP SERVERS
:LspInstall vuels jdtls kotlin_language_server tsserver angularls stylelint_lsp cssmodules_ls cssls jsonls dockerls html eslint sumneko_lua clangd vimls emmet_ls graphql
```
