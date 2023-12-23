#!/bin/bash
if [ $1 = "1" ]
then
whiptail --title "ATENÇAO" --msgbox "O Xampp será baixado e instalado" --fb 10 50
wget https://www.apachefriends.org/xampp-files/5.6.32/xampp-linux-x64-5.6.32-0-installer.run
chmod 777 xampp-linux-x64-5.6.32-0-installer.run
./xampp-linux-x64-5.6.32-0-installer.run
./menu.sh
elif [ $1 = "2" ]
then
/opt/lampp/xampp startapache
/opt/lampp/xampp startmysql
whiptail --title "ATENÇAO" --msgbox "O Xampp está em execução acesse http://localhost/phpmyadmin/ ou http://localhost" --fb 12 50
./menu.sh
elif [ $1 = "3" ]
then
/opt/lampp/xampp stop
whiptail --title "ATENÇAO" --msgbox "O Serviços do Xampp foram encerrados" --fb 10 50
./menu.sh
elif [ $1 = "4" ]
then
thunar /opt/lampp
./menu.sh
elif [ $1 = "5" ]
then
apt-get install thunar
./menu.sh
elif [ $1 = "6" ]
then
shutdown now
elif [ $1 = "7" ]
then
reboot
elif [ $1 = "8" ]
then
htop
./menu.sh
else
whiptail --title "MENSAGEM" --msgbox "NADA A FAZER" --fb 12 50
fi
