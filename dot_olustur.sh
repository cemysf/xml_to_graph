## launch dosyasındaki istenenlerin dot dosyasını oluşturur
## ./dot_olustur <launch_dosyaisim> <child_isim> <child_deger>
## kullanım: ./dot_olustur robot.launch launch/node pkg

#! /bin/bash
ELEMENTS=$(xmlstarlet sel -t -m //$2 -v @$3 -o ';'  -n $1)
IFS=$';'	##ayraç boşluk yerine ;

echo "digraph G{"
for EL in $ELEMENTS
do
       	echo " \"$1\" -> \"${EL}\"; "
done

echo "}"
unset IFS
