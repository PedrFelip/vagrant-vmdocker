# Ambiente CentOS 9 + Docker com Vagrant

Ambiente automatizado usando Vagrant para criar uma máquina virtual com CentOS Stream 9 e Docker instalado.
Ideal para quem quer praticar o uso de containers configurado rapidamente.

- Cria uma máquina virtual CentOS Stream 9
- Instala automaticamente o Docker e plugins
- Adiciona o usuário `vagrant` ao grupo Docker para usar sem sudo
- Redireciona a porta 8080 do host para a VM
