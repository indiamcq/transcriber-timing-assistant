; Transcriber hotkeys for segmenting Scripture for Scripture App Builder
; for use with simplekeysheader.ahk and KeysOff.ahk
;
; Written by Ian McQuay
; 2015-Jun-04
; Revised by IM 2015-Jun-05
;
; Set the menu icon
menu tray, Icon, t.ico
; not need new icon

; The following two lines are essential.
startScript = %A_ScriptName%	; This line is required at the start of a simplekeys script file.
#include SimpleKeys.ahk	; This line is required at the start of a simplekeys script file.
; ----------------------------------------------------------------------------------------
; preparation

window=Transcriber
SetTitleMatchMode, 1

; Hotkeys start with a $ so they don't fire themselves when not on Transcriber.
$RButton::
	SetKeyDelay, 200 
	IfWinActive, Transcriber
	{
		send, {LButton}{enter}{del}{End}
	} else {
		send, {RButton}
	}
	return
$NumpadAdd::
	SetKeyDelay, 200 
	IfWinActive, Transcriber
	{
		send, {enter}{del}{End}
	} else {
		send, {NumpadAdd}
	}
	return
$Space::
	SetKeyDelay, 200 
	IfWinActive, Transcriber 
	{
		send, {tab}
	} else {
		send, {space}
	}
	return
;