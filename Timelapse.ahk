#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


F2::
Loop framesNeeded {
Send {Space}
Sleep 1000
Send #{PrintScreen}
Sleep interval - 1000
}

F3::
clipDuration := 600 
eventDuration := 3600 
eventDurationMinutes := 0
fps := 30
time = Seconds

InputBox, clipDuration, Clip Duration, How long is the Clip Duration in SECONDS.
InputBox, eventDuration, Event Duration, How long is the Event Duration in SECONDS.
InputBox, fps, Frames per second, How many frames per seconds will the final video be in.

framesNeeded := eventDuration / clipDuration

interval := Round(eventDuration / framesNeeded / fps), 1

if (eventDuration > 60)
{
eventDuration := Round(eventDuration / 60), 1
time = Minutes
} 
else 
{
eventDuration := Round(eventDuration), 1
time = Seconds
}

MsgBox The interval between photos for a timelapse with a duration of %eventDuration% %time%, at %fps% frames per second is: %interval% seconds

