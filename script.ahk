#IfWinActive GTA:SA:MP
#include UDF.ahk
URLDownloadToFile, https://raw.githubusercontent.com/kolt04/ahk.scr_kolt04/master/update.txt, update.txt
FileRead, ver_one, script_ver.txt
FileRead, ver_update, update.txt
if (ver_one < ver_update)
{
    MsgBox, , AHK, Есть новая версия скрипта! Сейчас загрузим!
    FileAppend, %A_ScriptDir%, %A_Temp%\AHKDir.txt
	FileRead, Direct, %A_Temp%\AHKDir.txt
	URLDownloadToFile, https://raw.githubusercontent.com/Anton00756/AHK/master/Mafia.exe, %Direct%\script.ahk
}
IniRead, name, config.ini, main, name
IniRead, number, config.ini, main, number
IniRead, fraction, config.ini, main, fraction
IniRead, post, config.ini, main, post
IniRead, ftag, config.ini, main, ftag
IniRead, rtag, config.ini, main, rtag
Gui, Add, Text, x10 y320 w70 h20 , v%ver_one%
Gui, Add, GroupBox, x12 y10 w270 h150 , Информация
Gui, Add, Text, x22 y30 w40 h20 , Ник
Gui, Font, Bold, 
Gui, Add, Text, x22 y50 w140 h20 , %name%
Gui, Font, , 
Gui, Add, Text, x172 y30 w90 h20 , Номер телефона
Gui, Font, Bold, 
Gui, Add, Text, x172 y50 w100 h20 , %number%
Gui, Font, , 
Gui, Add, Text, x22 y70 w110 h20 , Организация
Gui, Font, Bold, 
Gui, Add, Text, x22 y90 w210 h20 , %fraction%
Gui, Font, , 
Gui, Add, Text, x22 y110 w110 h20 , Должность
Gui, Font, Bold, 
Gui, Add, Text, x22 y130 w210 h20 , %post%
Gui, Font, , 
Gui, Add, GroupBox, x12 y160 w160 h150 , Настройки организации
Gui, Add, Text, x22 y180 w40 h20 , Тэг /r
Gui, Add, Edit, x22 y200 w120 h20 vRTag, %rtag%
Gui, Add, Text, x22 y223 w40 h17 , Тэг /f
Gui, Add, DropDownList, x22 y240 w140 h121 vftag, МЗ|H-LS|H-SF|H-LV|LS|SF|LV
GuiControl, ChooseString, ftag, %ftag%
Gui, Add, Button, x22 y270 w140 h30 , Дополнительные настройки
Gui, Add, Button, x182 y280 w100 h30 gSave, Сохранить
Gui, Show
Return

GuiClose:
ExitApp
return

Save:
{
	guiControlget, RTag
	guiControlget, ftag
	iniwrite, %rtag%, config.ini, main, rtag
	iniwrite, %ftag%, config.ini, main, ftag
	reload
}

$~Enter::
if (isInChat() = 1)
if (isDialogOpen() = 0)
sleep 250
dwAddress := dwSAMP + 0x12D8F8
chatInput := readString(hGTA, dwAddress, 256)
if (ChatInput = "/aset")
{
 goto, start
 return
}
	
return

Active1:
{
	sendchat("/c 60")
	return
}

Active2:
{
	if (frak = "H-LS") or (frak = "H-SF") or (frak = "H-LV")
	{
		id := getId()
		sendchat("/med")
		sleep, 100
		sendchat("/medhelp " id " 1")
		sleep, 100
		send {vk 59}
		return
	}
	else
	{
		sendchat("/med")
		return
	}
}

RButton & vk49::
{
	FormatTime, TimeString,, dd.MM.yyyy - HH:mm:ss
	id := getIdByPed(getTargetPed())
	nick := getPlayerNameById(id)
	nick := RegExReplace(nick, "_", A_Space)
	sendchat("/me открыл барсетку")
	sleep, 1200
	sendchat("/me достал из неё документ о вступлении в семью Wetzel")
	sleep, 1200
	sendchat("/me взял ручку и заполняет бланки")
	sleep, 1200
	sendchat("/me передал документ и ручку " nick "")
	sleep, 1200
	sendchat("Поставь здесь свою подпись.")
	sleep, 1200
	sendchat("/n /me поставил подпись")
	sleep, 1200
	addChatMessageEx("4169E1", "Когда {32CD32}" nick " {4169E1}поставит подпись, нажмите {32CD32}F2.")
	keywait, vk71, d
	sendchat("/me открыв сумку и достав рацию передал " nick "")
	sleep, 1000
	sendchat("/in " id "")
	FileAppend, %TimeString% | В семью Wetzel принят %nick%`n, logs\groupinvites.txt
	return
}

!vk 4c::
{
	IniRead, password, config.ini, main, password
	sendinput, %password%{enter}
	return
}

bank_rem:
day := A_DDDD
if (day = "середа") or (day = "субота")
{
	addChatMessageEx("FF8C00","{FF8C00}Не забудьте сегодня отсыпать деньги на банковские счета!")
	return
}
return


:?:/om::
{
	sleep, 2000
	SendChat("/do Кислородная маска висит над операционным столом на крючке")
    Sleep 3500
    SendChat("/me надел кислородную маску на пациента")
    Sleep 4500
    SendChat("/me подал наркоз, прокрутив вентиль на баллоне")
    Sleep 3500
    SendChat("/me откусил подачу наркоза после того, как пациент уснул")
    Sleep 4500
    SendChat("/me снял маску с лица пациента")
    Sleep 4500
	SendChat("/c 60")
	send, {f8}
    Sleep 4500
    SendChat("/me взял со стола поднос с хирургическими инструментами")
    Sleep 4500
    SendChat("/me несёт поднос в руках")
    Sleep 3500
    SendChat("/me поставил поднос на табурет рядом с операционным столом")
    Sleep 3500
    SendChat("/me взял с подноса дыхательную трубку")
    Sleep 3500
    SendChat("/me ввёл дыхательную трубку в трахею пациента")
	    Sleep 4500
	SendChat("/c 60")
	send, {f8}
    Sleep 3500
    SendChat("/me взял в руки скальпель")
    Sleep 4500
    SendChat("/me на глаз наметив место надреза, сделал надрез")
    Sleep 4500
    SendChat("/me взял в руки пинцет")
    Sleep 3500
    SendChat("/me пролез пинцетом в надрез")
    Sleep 4500
    SendChat("/me зацепил пинцетом аппендикс")
    Sleep 4500
    SendChat("/me другой рукой со скальпелем, пролез в место надреза")
    Sleep 4500
    SendChat("/me обрезал воспалённый орган")
	    Sleep 4500
	SendChat("/c 60")
	send, {f8}
    Sleep 4500
    SendChat("/me извлёк аппендикс пинцетом из раны, после чего отложил на поднос")
    Sleep 3500
    SendChat("/me отложил скальпель на поднос")
    Sleep 3500
    SendChat("/me взял со стола кетгутовую нить и иглу")
    Sleep 3500
    SendChat("/me продел нить в ушко иглы")
    Sleep 4500
    SendChat("/me пролез руками в место надреза и стянул ткани на слепой кишке")
    Sleep 3500
    SendChat("/me наложил швы")
	    Sleep 4500
	SendChat("/c 60")
	send, {f8}
    Sleep 3500
    SendChat("/me зафиксировав швы, протянул руку к подносу и взял оттуда ножницы")
    Sleep 4500
    SendChat("/me отсёк лишнюю нить ножницами")
    Sleep 3500
    SendChat("/me стянув кожу у надреза, начал накладывать швы")
    Sleep 4500
    SendChat("/me закончив накладывать швы, зафиксировав их")
    Sleep 3500
    SendChat("/me обрезал лишнюю нить ножницами")
    Sleep 3500
    SendChat("/me сложил всё на поднос")
	    Sleep 4500
	SendChat("/c 60")
	send, {f8}
    Sleep 3500
    SendChat("/me взял с подноса пинцет")
    Sleep 4500
    SendChat("/do На подносе также лежит вата и стоит открытая баночка с антисептиком")
    Sleep 4500
    SendChat("/me подцепил пинцетом кусок ваты, после чего смочил её в растворе антисептика")
    Sleep 4500
    SendChat("/me обработал наружные швы антисептиком")
    Sleep 4500
    SendChat("/me сложил пинцет на поднос")
	return
}

!9::
{
sendchat("Здравствуйте,я Младший специалист больницы г.San Fierro")
sleep, 1300
sendchat("Предлагаю вам ознакомится с нашей больницей и трудоустроиться")
sleep, 1300
sendchat("/do На плече весит сумка с листовками.")
sleep, 1300
sendchat("/me поворачивает сумку к себе")
sleep, 1300
sendchat("/me открывает сумку")
sleep, 1300
sendchat("/do Сумка открыта.")
sleep, 1300
sendchat("/me берет листовку из сумки")
sleep, 1300
sendchat("/do Листовка в правой руке.")
sleep, 1300
sendchat("/me передает листовку человеку напротив")
sleep, 1300
sendchat("/do Надпись на листовке''Ждем вас в больнице г.San-Fierro''")
sleep, 1300
sendchat("/me закрывает сумку")
sleep, 1300
sendchat("/do Сумка закрыта.")
sleep, 1300
sendchat("Вот держите,будем ждать вас в нашей больнице на Трудоустройство.")
}


start:
{
	Sendchat("/mn")
	Sleep 500
    Sendinput {Enter}
	Sleep 500
	if(RegExMatch(getDialogCaption(), "Статистика игрока"))
	{
		txt := getDialogText(), i := 1
        txt := RegexReplace(txt, "{0099FF}")
		Loop, Parse, txt, `n
		{
			if(RegExMatch(A_LoopField, "\t(.*)", match))
			{
				stats%i% := trim(match1), i++
			}
		}
		name1:=stats1
		name1 := RegExReplace(name1, "_" , " ")
		phone1:=stats4
		fraction1:=stats18
		job1:=stats19
		addChatMessage("{0080FF}Ник: "name1 " | Телефон: " phone1 " | Фракция: " fraction1 " | Должность: " job1)
		iniWrite, %name1%, config.ini, main, name
		iniWrite, %phone1%, config.ini, main, number
		iniWrite, %fraction1%, config.ini, main, fraction
		iniWrite, %job1%, config.ini, main, post
		return
	}
}