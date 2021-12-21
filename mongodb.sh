#!/bin/bash

### chave GPG pública para a versão estável mais recente do MongoDB:
curl -fsSL https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -

### verificar se a chave foi adicionada corretamente:
apt-key list

### cria um arquivo no diretório sources.list.d:
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list

### atualiza o índice local de pacotes do servidor:
sudo apt update

### instalação do MongoDB
sudo apt install mongodb-org

### inicia o serviço MongoDB
sudo systemctl start mongod.service

### verifica status do serviço:
sudo systemctl status mongod

### habilita início automático
sudo systemctl enable mongod

### conectando-se ao servidor de banco de dados e executando um comando de diagnóstico:
mongo --eval 'db.runCommand({ connectionStatus: 1 })'


### verifica o status do serviço MongoDB:
# sudo systemctl status mongod
 
### parar o serviço
# sudo systemctl stop mongod
 
### Para iniciar o serviço quando ele estiver parado:
# sudo systemctl start mongod
 
### Reiniciar o servidor quando ele já estiver executando:
# sudo systemctl restart mongod
 
### Desativar essa inicialização automática:
# sudo systemctl disable mongod
