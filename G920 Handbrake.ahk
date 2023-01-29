#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Joy5::
Send {h down}
KeyWait Joy5
Send {h up}

Joy6::
Send {h down}
KeyWait Joy6
Send {h up}

F3:: ExitApp