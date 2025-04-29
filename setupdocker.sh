#! /bin/bash
# Script para configurar o docker no CentOS 9

# Atualiza o sistema
echo "Atualizando o sistema..."

sudo dnf update -y

# Configura o repo do docker
echo "Configurando o repositório do Docker..."

sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Instala o docker
echo "Instalando o Docker..."

sudo dnf install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
sudo systemctl enable --now docker

# Adiciona o usuário ao grupo docker

# Cria o usuário
echo "Criando o usuário..."
sudo useradd -m -p '$y$j9T$bs6rN0vRokotsxtk.QbOS/$Ta6YEBN6RDh345ntJYGctqu5mJJThIwmzqq50iHcUaA' pedrofelipe

# Dá permissões de sudo
sudo usermod -aG wheel pedrofelipe

# add os usuários ao grupo docker
sudo usermod -aG docker pedrofelipe
sudo usermod -aG docker vagrant