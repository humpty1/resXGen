resXGen.exe   -f cmdTools.chm   help    -r help.resx
resXGen.exe   -f 07.bmp agent
resXGen.exe   -l 3 -v <pictures.lst -r pnglst.resx
resXGen.exe   -l 3 -v <eye.lst -r eyelst.resx
rem генерация ресурсов для растровых карт
resXGen.exe   -l 3 -v <tiles.lst -r tiles.resx
