#!/bin/bash

sudo apt install curl 
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash

### O script do instalador nvm cria uma entrada de ambiente para o script de login do usuário atual. Você pode fazer logout e login novamente para carregar o ambiente ou executar o comando abaixo para fazer o mesmo.
# source ~/.profile

### Instalando o Node usando NVM

# versão mais recente
# nvm install node 

# versão específica
# nvm install 12.18.3

# listar versões instaladas
# nvm ls

# selecionar versão instalada
# nvm use 12.18.3

# versão padrão instalada
# nvm run default --version

# executar script de Node com a versão desejada
# nvm exec 12.18.3 server.js 
