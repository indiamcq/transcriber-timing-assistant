; Transcriber hotkeys for segmenting Scripture for Scripture App Builder
; for use with simplekeysheader.ahk and KeysOff.ahk
;
; Written by Ian McQuay
; 2015-Jun-04
; Revised by IM 2015-Jun-05
;
; ----------------------------------------------------------------------------------------
; preparation
; Allow only one instance
#SingleInstance force
SetTitleMatchMode, 1

; if not compiled (i.e. used as a script), Set the menu icon and use 
if (A_IsCompiled <> 1) {
	iconfile := "Transcriber-Timing-Assistant.ico"
	menu tray, Icon, %iconfile%
}

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