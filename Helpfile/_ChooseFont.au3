#include <Misc.au3>
#include <MsgBoxConstants.au3>

Local $a_font = _ChooseFont("Arial", 8)
If (@error) Then
	MsgBox($MB_SYSTEMMODAL, "", "Error _ChooseFont: " & @error)
Else
	MsgBox($MB_SYSTEMMODAL, "", "Font Name: " & $a_font[2] & @CRLF & "Size: " & $a_font[3] & @CRLF & "Weight: " & $a_font[4] & @CRLF & "COLORREF rgbColors: " & $a_font[5] & @CRLF & "Hex BGR Color: " & $a_font[6] & @CRLF & "Hex RGB Color: " & $a_font[7])
EndIf
