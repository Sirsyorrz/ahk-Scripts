#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


+F5::
Gui, Add, Button, x10 y5 gButton1, SoT Shanty AFK
Gui, Add, Button, x120 y5 gbutton2, KILL
Gui, Add, Button, x10 y35 gButton3, G920 Handbrake
Gui, Add, Button, x120 y35 gbutton4, KILL
Gui, Add, Button, x10 y65 gButton5, Timelapse
Gui, Add, Button, x120 y65 gbutton6, KILL
Gui, Add, Button, x160 y65 gbutton7, EDIT
Gui, Show
Return

Button1:
    Run, SoT Shanty AFK.ahk
    Gui, Submit
	Return
	
Button2:
	DetectHiddenWindows, On
	WinClose, %A_ScriptDir%\SoT Shanty AFK.ahk ahk_class AutoHotkey
	Gui, Submit
	Return

Button3:
    Run, G920 Handbrake.ahk
    Gui, Submit
	Return
	
Button4:
	DetectHiddenWindows, On
	WinClose, %A_ScriptDir%\G920 Handbrake.ahk ahk_class AutoHotkey
	Gui, Submit	
	Return
	
Button5:
	Run, Timelapse.ahk
	Gui, Submit	
	Return
	
Button6:
	DetectHiddenWindows, On
	WinClose, %A_ScriptDir%\Timelapse.ahk ahk_class AutoHotkey
	Gui, Submit	
	Return
	
Button7:
	Run, % "notepad++.exe " "Timelapse.ahk"
	Gui, Submit	
	Return
	

+F1::
Send {Esc}
Sleep 100
MouseMove, 300, 800, 100 
Sleep 100
Send {LButton}
Sleep 100
Send {Enter}










