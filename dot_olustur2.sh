## launch dosyasındaki bütün elementleri inceler
## ./dot_olustur <launch_dosyaisim> 
## kullanım: ./dot_olustur robot.launch

#! /bin/bash
ELEMENTS=$(xmlstarlet sel -t -m //launch/* -v "name()" -o ":\n " -v @*[1] -o ";" $1)
IFS=$';'	##ayraç boşluk yerine ;

echo "digraph G{"
for EL in $ELEMENTS;do
	echo " \"$1\" -> \"${EL}\"; "
done

echo "}"
unset IFS
