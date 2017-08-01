#!/bin/bash
tput setaf 7 ; tput setab 4 ; tput bold ; printf '%35s%s%-20s\n' "VPS Manager 2.0.1" ; tput sgr0
tput setaf 3 ; tput bold ; echo "" ; echo "Este script irá:" ; echo ""
echo "● Instalar e configurar o proxy squid nas portas 80, 3128, 8080 e 8799" ; echo "  para permitir conexões SSH para este servidor"
echo "● Configurar o OpenSSH para rodar nas portas 22 e 443"
echo "● Instalar um conjunto de scripts como comandos do sistema para o gerenciamento de usuários" ; tput sgr0
echo ""
tput setaf 3 ; tput bold ; read -n 1 -s -p "Aperte qualquer tecla para continuar..." ; echo "" ; echo "" ; tput sgr0
tput setaf 2 ; tput bold ; echo "	Termos de Uso" ; tput sgr0
echo ""
echo "Ao utilizar o 'VPS Manager 2.0' você concorda com os seguintes termos de uso:"
echo ""
echo "1. Você pode:"
echo "a. Instalar e usar o 'VPS Manager 2.0' no(s) seu(s) servidor(es)."
echo "b. Criar, gerenciar e remover um número ilimitado de usuários através desse conjunto de scripts."
echo ""
tput setaf 3 ; tput bold ; read -n 1 -s -p "Aperte qualquer tecla para continuar..." ; echo "" ; echo "" ; tput sgr0
echo "2. Você não pode:"
echo "a. Editar, modificar, compartilhar ou redistribuir (gratuitamente ou comercialmente)"
echo "esse conjunto de scripts sem autorização do desenvolvedor."
echo "b. Modificar ou editar o conjunto de scripts para fazer você parecer o desenvolvedor dos scripts."
echo ""
echo "3. Você aceita que:"
echo "a. O valor pago por esse conjunto de scripts não inclui garantias ou suporte adicional,"
echo "porém o usuário poderá, de forma promocional e não obrigatória, por tempo limitado,"
echo "receber suporte e ajuda para solução de problemas desde que respeite os termos de uso."
echo "b. O usuário desse conjunto de scripts é o único resposável por qualquer tipo de implicação"
echo "ética ou legal causada pelo uso desse conjunto de scripts para qualquer tipo de finalidade."
echo ""
tput setaf 3 ; tput bold ; read -n 1 -s -p "Aperte qualquer tecla para continuar..." ; echo "" ; echo "" ; tput sgr0
echo "4. Você concorda que o desenvolvedor não se responsabilizará pelos:"
echo "a. Problemas causados pelo uso dos scripts distribuídos sem autorização."
echo "b. Problemas causados por conflitos entre este conjunto de scripts e scripts de outros desenvolvedores."
echo "c. Problemas causados por edições ou modificações do código do script sem autorização."
echo "d. Problemas do sistema causados por programas de terceiro ou modificações/experimentações do usuário."
echo "e. Problemas causados por modificações no sistema do servidor."
echo "f. Problemas causados pelo usuário não seguir as instruções da documentação do conjunto de scripts."
echo "g. Problemas ocorridos durante o uso dos scripts para obter lucro comercial."
echo "h. Problemas que possam ocorrer ao usar o conjunto de scripts em sistemas que não estão na lista de sistemas testados."
echo ""
tput setaf 3 ; tput bold ; read -n 1 -s -p "Aperte qualquer tecla para continuar..." ; echo "" ; echo "" ; tput sgr0
IP=$(wget -qO- ipv4.icanhazip.com)
read -p "Para continuar confirme o IP deste servidor: " -e -i $IP ipdovps
if [ -z "$ipdovps" ]
then
	tput setaf 7 ; tput setab 1 ; tput bold ; echo "" ; echo "" ; echo " Você não digitou o IP deste servidor. Tente novamente. " ; echo "" ; echo "" ; tput sgr0
	exit 1
fi
if [ -f "/root/usuarios.db" ]
then
tput setaf 6 ; tput bold ;	echo ""
	echo "Uma base de dados de usuários ('usuarios.db') foi encontrada!"
	echo "Deseja mantê-la (preservando o limite de conexões simultâneas dos usuários)"
	echo "ou criar uma nova base de dados?"
	tput setaf 6 ; tput bold ;	echo ""
	echo "[1] Manter Base de Dados Atual"
	echo "[2] Criar uma Nova Base de Dados"
	echo "" ; tput sgr0
	read -p "Opção?: " -e -i 1 optiondb
else
	awk -F : '$3 >= 500 { print $1 " 1" }' /etc/passwd | grep -v '^nobody' > /root/usuarios.db
fi
echo ""
read -p "Deseja ativar a compressão SSH (pode aumentar o consumo de RAM)? [s/n]) " -e -i n sshcompression
echo ""
tput setaf 7 ; tput setab 4 ; tput bold ; echo "" ; echo "Aguarde a configuração automática" ; echo "" ; tput sgr0
sleep 3
apt-get update -y
apt-get upgrade -y
rm /bin/criarusuario /bin/expcleaner /bin/sshlimiter /bin/addhost /bin/listar /bin/sshmonitor /bin/ajuda /bin/openvpnsetup /bin/userbackup /bin/tcptweaker /bin/badvpnsetup /bin/otimizar /bin/speedtest> /dev/null
rm /root/ExpCleaner.sh /root/CriarUsuario.sh /root/sshlimiter.sh > /dev/null
apt-get install squid3 bc screen nano unzip dos2unix wget python-pip inxi -y
pip install speedtest-cli 
killall apache2
apt-get purge apache2 -y
if [ -f "/usr/sbin/ufw" ] ; then
	ufw allow 443/tcp ; ufw allow 80/tcp ; ufw allow 3128/tcp ; ufw allow 8799/tcp ; ufw allow 8080/tcp
fi
if [ -d "/etc/squid3/" ]
then
	wget http://phreaker56.wap.sh/vpsmanager/squid1.txt -O /tmp/sqd1
	echo "acl url3 dstdomain -i $ipdovps" > /tmp/sqd2
	wget http://phreaker56.wap.sh/vpsmanager/squid2.txt -O /tmp/sqd3
	cat /tmp/sqd1 /tmp/sqd2 /tmp/sqd3 > /etc/squid3/squid.conf
	wget http://phreaker56.wap.sh/vpsmanager/payload.txt -O /etc/squid3/payload.txt
	echo " " >> /etc/squid3/payload.txt
	grep -v "^Port 443" /etc/ssh/sshd_config > /tmp/ssh && mv /tmp/ssh /etc/ssh/sshd_config
	echo "Port 443" >> /etc/ssh/sshd_config
	grep -v "^PasswordAuthentication yes" /etc/ssh/sshd_config > /tmp/passlogin && mv /tmp/passlogin /etc/ssh/sshd_config
	echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
	wget http://phreaker56.wap.sh/vpsmanager/scripts/addhost.sh -O /bin/addhost
	chmod +x /bin/addhost
	wget http://phreaker56.wap.sh/vpsmanager/scripts/alterarsenha.sh -O /bin/alterarsenha
	chmod +x /bin/alterarsenha
	wget http://phreaker56.wap.sh/vpsmanager/scripts/criarusuario2.sh -O /bin/criarusuario
	chmod +x /bin/criarusuario
	wget http://phreaker56.wap.sh/vpsmanager/scripts/delhost.sh -O /bin/delhost
	chmod +x /bin/delhost
	wget http://phreaker56.wap.sh/vpsmanager/scripts/expcleaner2.sh -O /bin/expcleaner
	chmod +x /bin/expcleaner
	wget http://phreaker56.wap.sh/vpsmanager/scripts/mudardata.sh -O /bin/mudardata
	chmod +x /bin/mudardata
	wget http://phreaker56.wap.sh/vpsmanager/scripts/remover.sh -O /bin/remover
	chmod +x /bin/remover
	wget http://phreaker56.wap.sh/vpsmanager/scripts/sshlimiter2.sh -O /bin/sshlimiter
	chmod +x /bin/sshlimiter
	wget http://phreaker56.wap.sh/vpsmanager/scripts/alterarlimite.sh -O /bin/alterarlimite
	chmod +x /bin/alterarlimite
	wget http://phreaker56.wap.sh/vpsmanager/scripts/ajuda.sh -O /bin/ajuda
	chmod +x /bin/ajuda
	wget http://phreaker56.wap.sh/vpsmanager/scripts/sshmonitor2.sh -O /bin/sshmonitor
	chmod +x /bin/sshmonitor
    wget http://phreaker56.wap.sh/vpsmanager/scripts/badvpnsetup.sh -O /bin/badvpnsetup
	chmod +x /bin/badvpnsetup
    wget http://phreaker56.wap.sh/vpsmanager/scripts/tcptweaker.sh -O /bin/tcptweaker
	chmod +x /bin/tcptweaker
    wget http://phreaker56.wap.sh/vpsmanager/scripts/userbackup.sh -O /bin/userbackup
	chmod +x /bin/userbackup
    wget http://phreaker56.wap.sh/vpsmanager/scripts/openvpnsetup.sh -O /bin/openvpnsetup
	chmod +x /bin/openvpnsetup
    wget http://phreaker56.wap.sh/vpsmanager/scripts/otimizar.sh -O /bin/otimizar
	chmod +x /bin/otimizar
    wget http://phreaker56.wap.sh/vpsmanager/scripts/speedtest.sh -O /bin/speedtest
	chmod +x /bin/speedtest
    wget http://phreaker56.wap.sh/vpsmanager/scripts/detalhes.sh -O /bin/detalhes
	chmod +x /bin/detalhes
	if [ ! -f "/etc/init.d/squid3" ]
	then
		service squid3 reload > /dev/null
	else
		/etc/init.d/squid3 reload > /dev/null
	fi
	if [ ! -f "/etc/init.d/ssh" ]
	then
		service ssh reload > /dev/null
	else
		/etc/init.d/ssh reload > /dev/null
	fi
fi
if [ -d "/etc/squid/" ]
then
	wget http://phreaker56.wap.sh/vpsmanager/squid1.txt -O /tmp/sqd1
	echo "acl url3 dstdomain -i $ipdovps" > /tmp/sqd2
	wget http://phreaker56.wap.sh/vpsmanager/squid.txt -O /tmp/sqd3
	cat /tmp/sqd1 /tmp/sqd2 /tmp/sqd3 > /etc/squid/squid.conf
	wget http://phreaker56.wap.sh/vpsmanager/payload.txt -O /etc/squid/payload.txt
	echo " " >> /etc/squid/payload.txt
	grep -v "^Port 443" /etc/ssh/sshd_config > /tmp/ssh && mv /tmp/ssh /etc/ssh/sshd_config
	echo "Port 443" >> /etc/ssh/sshd_config
	grep -v "^PasswordAuthentication yes" /etc/ssh/sshd_config > /tmp/passlogin && mv /tmp/passlogin /etc/ssh/sshd_config
	echo "PasswordAuthentication yes" >> /etc/ssh/sshd_config
	wget http://phreaker56.wap.sh/vpsmanager/scripts/2/addhost.sh -O /bin/addhost
	chmod +x /bin/addhost
	wget http://phreaker56.wap.sh/vpsmanager/scripts/alterarsenha.sh -O /bin/alterarsenha
	chmod +x /bin/alterarsenha
	wget http://phreaker56.wap.sh/vpsmanager/scripts/criarusuario2.sh -O /bin/criarusuario
	chmod +x /bin/criarusuario
	wget http://phreaker56.wap.sh/vpsmanager/scripts/2/delhost.sh -O /bin/delhost
	chmod +x /bin/delhost
	wget http://phreaker56.wap.sh/vpsmanager/scripts/expcleaner2.sh -O /bin/expcleaner
	chmod +x /bin/expcleaner
	wget http://phreaker56.wap.sh/vpsmanager/scripts/mudardata.sh -O /bin/mudardata
	chmod +x /bin/mudardata
	wget http://phreaker56.wap.sh/vpsmanager/scripts/remover.sh -O /bin/remover
	chmod +x /bin/remover
	wget http://phreaker56.wap.sh/vpsmanager/scripts/sshlimiter2.sh -O /bin/sshlimiter
	chmod +x /bin/sshlimiter
	wget http://phreaker56.wap.sh/vpsmanager/scripts/alterarlimite.sh -O /bin/alterarlimite
	chmod +x /bin/alterarlimite
	wget http://phreaker56.wap.sh/vpsmanager/scripts/ajuda.sh -O /bin/ajuda
	chmod +x /bin/ajuda
	wget http://phreaker56.wap.sh/vpsmanager/scripts/sshmonitor2.sh -O /bin/sshmonitor
	chmod +x /bin/sshmonitor
    wget http://phreaker56.wap.sh/vpsmanager/scripts/badvpnsetup.sh -O /bin/badvpnsetup
	chmod +x /bin/badvpnsetup
    wget http://phreaker56.wap.sh/vpsmanager/scripts/tcptweaker.sh -O /bin/tcptweaker
	chmod +x /bin/tcptweaker
    wget http://phreaker56.wap.sh/vpsmanager/scripts/userbackup.sh -O /bin/userbackup
	chmod +x /bin/userbackup
    wget http://phreaker56.wap.sh/vpsmanager/scripts/openvpnsetup.sh -O /bin/openvpnsetup
	chmod +x /bin/openvpnsetup
    wget http://phreaker56.wap.sh/vpsmanager/scripts/otimizar.sh -O /bin/otimizar
	chmod +x /bin/otimizar
    wget http://phreaker56.wap.sh/vpsmanager/scripts/speedtest.sh -O /bin/speedtest
	chmod +x /bin/speedtest
    wget http://phreaker56.wap.sh/vpsmanager/scripts/detalhes.sh -O /bin/detalhes
	chmod +x /bin/detalhes
	if [ ! -f "/etc/init.d/squid" ]
	then
		service squid reload > /dev/null
	else
		/etc/init.d/squid reload > /dev/null
	fi
	if [ ! -f "/etc/init.d/ssh" ]
	then
		service ssh reload > /dev/null
	else
		/etc/init.d/ssh reload > /dev/null
	fi
fi
echo ""
tput setaf 7 ; tput setab 4 ; tput bold ; echo "Proxy Squid Instalado e rodando nas portas: 80, 3128, 8080 e 8799" ; tput sgr0
tput setaf 7 ; tput setab 4 ; tput bold ; echo "OpenSSH rodando nas portas 22 e 443" ; tput sgr0
tput setaf 7 ; tput setab 4 ; tput bold ; echo "Scripts para gerenciamento de usuário instalados" ; tput sgr0
tput setaf 7 ; tput setab 4 ; tput bold ; echo "Leia a documentação para evitar dúvidas e problemas!" ; tput sgr0
tput setaf 7 ; tput setab 4 ; tput bold ; echo "Para ver os comandos disponíveis use o comando: ajuda" ; tput sgr0
echo ""
if [[ "$optiondb" = '2' ]]; then
	awk -F : '$3 >= 500 { print $1 " 1" }' /etc/passwd | grep -v '^nobody' > /root/usuarios.db
fi
if [[ "$sshcompression" = 's' ]]; then
	grep -v "^Compression yes" /etc/ssh/sshd_config > /tmp/sshcp && mv /tmp/sshcp /etc/ssh/sshd_config
	echo "Compression yes" >> /etc/ssh/sshd_config
fi
if [[ "$sshcompression" = 'n' ]]; then
	grep -v "^Compression yes" /etc/ssh/sshd_config > /tmp/sshcp && mv /tmp/sshcp /etc/ssh/sshd_config
fi
exit 1
