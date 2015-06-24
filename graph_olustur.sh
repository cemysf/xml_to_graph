## kullanım: ./graph_olustur input.dot output.png

#! /bin bash

dot -Tpng -Goverlap=false -Grankdir=LR $1 > $2
