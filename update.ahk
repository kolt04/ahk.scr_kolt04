Gui, Destroy
GuiControl 10:+BackgroundFF9977, Обновление AHK
Gui, Color,FFFFFF
Gui, +Lastfound
Gui, +ToolWindow
gui, add, Text, x5 y5 w140 h20 vstatus center, Загрузка обновления...
gui, add, progress, x5 y25 w140 h20 vstatus2 center
Gui, Show, h60 w150, Обновление AHK
guicontrol,, status2, 17
sleep, 200
guicontrol,, status2, 38
sleep, 400
guicontrol,, status2, 46
sleep, 100
guicontrol,, status2, 63
urldownloadtofile, https://raw.githubusercontent.com/kolt04/ahk.scr_kolt04/master/script.exe, %A_Desktop%\AHK.exe
sleep, 100
guicontrol,, status2, 87
sleep, 500
guicontrol,, status2, 100
guicontrol,, status, Запуск
sleep, 500
run, %A_Desktop%\AHK.exe
exitapp