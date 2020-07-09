Gui, Destroy
GuiControl 10:+BackgroundFF9977, Обновление скрипта
Gui, Color,FFFFFF
Gui, +Lastfound
Gui, +ToolWindow
iniread, dir_inst, update.ini, main, dir_inst
DIR = %A_MyDocuments%\GTA San Andreas User Files\AHK kolt04
fileread, updatex, %dir%\update.txt
filedelete, %dir%\ver.txt
sleep, 400
fileappend, %updatex%, %dir%\ver.txt
if (dir_inst="") or (dir_inst="ERROR")
{
	DIR_INST=Папка загрузки скрипта не указана
}
Gui, Add, Button, x12 y10 w160 h20 gupd_des, Список изменений
Gui, Add, Button, x12 y40 w160 h20 gset_dir_inst, Выбрать папку для установки
Gui, Add, Text, x182 y44 w290 h20 vdir_inst, %dir_inst%
Gui, Add, Button, x12 y70 w160 h20 gload_scr, Загрузить
Gui, Add, Progress, x182 y70 w290 h20 vprogress_load c00CC00, myprogress
Gui, Add, Text, x12 y100 w460 h30 , Перед загрузкой советуем отключить антивирус`, иначе скрипт может не загрузиться из-за блокировки.
Gui, Show
return

upd_des:
{
	run, https://vk.com/@wetzel_family-obnovlenie-ahk-306
	return
}

set_dir_inst:
{
	FileSelectFolder, OutputVar, , 3
    if OutputVar =
    MsgBox, Вы не выбрали папку!
    else
    MsgBox, Директория сохранена!
    iniwrite %OutputVar%, update.ini, main, dir_inst
	GUIcONTROL,, dir_inst, %outputvar%
	iniread, dir_inst, update.ini, main, dir_inst
	return
}

load_scr:
{
	guicontrol,, progress_load, 20
	guicontrol,, progress_load, 35
	urldownloadtofile, https://raw.githubusercontent.com/kolt04/ahk.scr_kolt04/master/script.exe, %dir_inst%\AHK.exe
	guicontrol,, progress_load, 70
	guicontrol,, progress_load, 100
	sleep, 1000
	run, %dir_inst%\AHK.exe
	exitapp
	return
}