#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#MaxThreadsPerHotkey, 2


Toggle = 0

F1::
Toggle := !Toggle
While Toggle {
	Send {LButton down}
	Sleep 60500
	Send {LButton up}
	Sleep 100
	Send {w down}
	Sleep 200
	Send {s down}
	Sleep 200
	Send {space down}
	Sleep 200
	}
return

F3:: ExitApp
