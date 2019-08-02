loop, 10
{
	iniread, num%a_index%, %dir%\db_fast_num.ini, pl_num, num%a_index%
}
loop, 10
{
	iniread, cmd%a_index%, %dir%\db_fast_num.ini, c_cmd, cmd%a_index%
}
Gui, Add, Text, x12 y30 w80 h20 , 1 номер
Gui, Add, Text, x12 y50 w80 h20 , 2 номер
Gui, Add, Text, x12 y70 w80 h20 , 3 номер
Gui, Add, Text, x12 y90 w80 h20 , 4 номер
Gui, Add, Text, x12 y110 w80 h20 , 5 номер
Gui, Add, Text, x12 y130 w80 h20 , 6 номер
Gui, Add, Text, x12 y150 w80 h20 , 7 номер
Gui, Add, Text, x12 y170 w80 h20 , 8 номер
Gui, Add, Text, x12 y190 w80 h20 , 9 номер
Gui, Add, Text, x12 y210 w80 h20 , 10 номер
Gui, Add, Edit, x92 y30 w100 h20 vnum1, %num1%
Gui, Add, Text, x92 y10 w100 h20 , Номер телефона
Gui, Add, Edit, x202 y30 w100 h20 vcmd1, %cmd1%
Gui, Add, Text, x202 y10 w100 h20 , Команда
Gui, Add, Edit, x92 y50 w100 h20 vnum2, %num2%
Gui, Add, Edit, x202 y50 w100 h20 vcmd2, %cmd2%
Gui, Add, Edit, x202 y70 w100 h20 vcmd3, %cmd3%
Gui, Add, Edit, x92 y70 w100 h20 vnum3, %num3%
Gui, Add, Edit, x92 y90 w100 h20 vnum4, %num4%
Gui, Add, Edit, x92 y110 w100 h20 vnum5, %num5%
Gui, Add, Edit, x92 y130 w100 h20 vnum6, %num6%
Gui, Add, Edit, x92 y150 w100 h20 vnum7, %num7%
Gui, Add, Edit, x92 y170 w100 h20 vnum8, %num8%
Gui, Add, Edit, x92 y190 w100 h20 vnum9, %num9%
Gui, Add, Edit, x92 y210 w100 h20 vnum10, %num10%
Gui, Add, Edit, x202 y90 w100 h20 vcmd4, %cmd4%
Gui, Add, Edit, x202 y110 w100 h20 vcmd5, %cmd5%
Gui, Add, Edit, x202 y130 w100 h20 vcmd6, %cmd6%
Gui, Add, Edit, x202 y150 w100 h20 vcmd7, %cmd7%
Gui, Add, Edit, x202 y170 w100 h20 vcmd8, %cmd8%
Gui, Add, Edit, x202 y190 w100 h20 vcmd9, %cmd9%
Gui, Add, Edit, x202 y210 w100 h20 vcmd10, %cmd10%
Gui, Add, Button, x12 y240 w290 h20 gsave_fastnum, Сохранить
Gui, Show, w317 h265, Записать номер
return

GuiClose:
ExitApp

save_fastnum:
{
	guiControlGet, num1
	guiControlGet, num2
	guiControlGet, num3
	guiControlGet, num4
	guiControlGet, num5
	guiControlGet, num6
	guiControlGet, num7
	guiControlGet, num8
	guiControlGet, num9
	guiControlGet, num10
	guiControlGet, cmd1
	guiControlGet, cmd2
	guiControlGet, cmd3
	guiControlGet, cmd4
	guiControlGet, cmd5
	guiControlGet, cmd6
	guiControlGet, cmd7
	guiControlGet, cmd8
	guiControlGet, cmd9
	guiControlGet, cmd10
	iniwrite, %num1%, %dir%\db_fast_num.ini, pl_num, num1
	iniwrite, %num2%, %dir%\db_fast_num.ini, pl_num, num2
	iniwrite, %num3%, %dir%\db_fast_num.ini, pl_num, num3
	iniwrite, %num4%, %dir%\db_fast_num.ini, pl_num, num4
	iniwrite, %num5%, %dir%\db_fast_num.ini, pl_num, num5
	iniwrite, %num6%, %dir%\db_fast_num.ini, pl_num, num6
	iniwrite, %num7%, %dir%\db_fast_num.ini, pl_num, num7
	iniwrite, %num8%, %dir%\db_fast_num.ini, pl_num, num8
	iniwrite, %num9%, %dir%\db_fast_num.ini, pl_num, num9
	iniwrite, %num10%, %dir%\db_fast_num.ini, pl_num, num10
	iniwrite, %cmd1%, %dir%\db_fast_num.ini, c_cmd, cmd1
	iniwrite, %cmd2%, %dir%\db_fast_num.ini, c_cmd, cmd2
	iniwrite, %cmd3%, %dir%\db_fast_num.ini, c_cmd, cmd3
	iniwrite, %cmd4%, %dir%\db_fast_num.ini, c_cmd, cmd4
	iniwrite, %cmd5%, %dir%\db_fast_num.ini, c_cmd, cmd5
	iniwrite, %cmd6%, %dir%\db_fast_num.ini, c_cmd, cmd6
	iniwrite, %cmd7%, %dir%\db_fast_num.ini, c_cmd, cmd7
	iniwrite, %cmd8%, %dir%\db_fast_num.ini, c_cmd, cmd8
	iniwrite, %cmd9%, %dir%\db_fast_num.ini, c_cmd, cmd9
	iniwrite, %cmd10%, %dir%\db_fast_num.ini, c_cmd, cmd10
	exitapp
	return
}