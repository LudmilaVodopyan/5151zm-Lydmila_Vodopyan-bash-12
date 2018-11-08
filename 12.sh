#!/bin/bash

 # очищаем консоль
 clear

 echo "5151zm-Lydmila_Vodopyan-bash-12 :"
 echo "Производит поиск по имени или размеру файла."
 echo "#1  Запрашивает и выводит имя каталога."
 echo "#2  Предлагает выбрать критерий поиска."
 echo "    В зависимости от выбранного критерия"
 echo "    производит поиск в указанном каталоге"
 echo "    по имени или размеру файла."

 # 1 #
 echo
 echo "Введите каталог"
 read search_directory
 echo


# 2 #
 tryagain=true
 while $tryagain; do
    echo
    echo "Выберите критерий поиска(1/2):"
    echo "(1) Имя"
    echo "(2) Размер"
    echo
    read choice
    if [ $choice == "1" ]; then
	echo "Введите имя файла:"
	read filename
	find $search_directory -type f -name "*"$filename"*" -prune
	tryagain=false
    elif [ $choice == "2" ]; then
	echo "Введите размер файла (в байтах):"
	read filesize
	find $search_directory -type f -size +$filesize"c"
	tryagain=false
    else
	echo "Пожалуйста, выберите один из двух возможных вариантов."
    fi
 done
