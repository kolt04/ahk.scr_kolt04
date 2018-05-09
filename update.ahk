DIR = %A_MyDocuments%\GTA San Andreas User Files\AHK kolt04\
MsgBox, 64, AHK Update, Вышла новая версия AHK!`nСейчас она загрузится.
urldownloadtofile, https://raw.githubusercontent.com/kolt04/ahk.scr_kolt04/master/script.exe, %Dir%\script.exe
run, %dir%\script.exe
exitapp