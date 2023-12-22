#!/bin/bash
choice=$(whiptail --title "SERVER CONTROL" --radiolist --cancel-button "Sair" --fb \
"Selecione a opção desejada" 16	 50 8 \
"1" "Instalar o Xampp" OFF \
"2" "Abrir o Apache e SQL" OFF \
"3" "Encerrar Apache e SQL" OFF \
"4" "Abrir Pastas de configuração" OFF \
"5" "Instalar complemento" OFF \
"6" "Desligar o sistema" OFF \
"7" "Reiniciar o sistema" OFF \
"8" "Abrir Htop" OFF \
3>&1 1>&2 2>&3)
status=$?
if [ $status = 0 ]
then
echo $choice > log 
./server $choice
else
echo "Cancelado"
fi
