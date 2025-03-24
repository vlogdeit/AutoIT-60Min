WinActivate("Script.js") ; activates the window that has old in the tilte bar
WinWaitActive("Script.js") ; waits until the window is the active window


; Function to send keys slowly
Func SendSlow($text)
    For $i = 1 To StringLen($text)
        Send(StringMid($text, $i, 1)) ; Send one character at a time
        Sleep(200) ;  200ms delay between each character
    Next
EndFunc

;Function type message
Func Scrie($i, $msg)
	If $i = 0 Then
		SendSlow("if(i===" & $i & "){")
	Else
		SendSlow("else if(i===" & $i & "){")
	EndIf
	Sleep(1000)
	Send("{ENTER}")
	If StringLen($msg) > 0 Then
		SendSlow("console.log(`" & $msg & "`);")
	Else
		SendSlow("console.log(`Numarul este " & $i & "`);")
	EndIf
	Sleep(1000)
	Send("{DOWN}")
	Send("{ENTER}")
EndFunc


For $i = 43 To 300 Step +1
 	Switch $i
		Case 8
			Scrie($i,"Am ascuns mesaje prin video... ramai pana la final :)")
 	Case 13
			Scrie($i,"Vrei sa inveti si tu testare automata? Am un curs fff bun in comentarii")	
 	Case 25
			Scrie($i,"Spune-mi in comentarii cu ce te ocupi?")
 	Case 33
			Scrie($i,"Viziteaza si BlogDeIT.ro")
 	Case 44
			Scrie($i,"Ai dat subscribe?")		
 	Case 53
			Scrie($i,"Postez zilnic (aproape) pe instagram. Ma urmaresti acolo?")
 	Case 68
			Scrie($i,"Daca ai ajuns pana aici, da-mi o cafea :)")
 	Case 77
			Scrie($i,"Ce parere ai despre acest video?")
 	Case 89
			Scrie($i,"Cam atat a fost... Mersi de vizualizare, like, share si subscribe.")
     Case Else
			Scrie($i,"")
 	EndSwitch
Next