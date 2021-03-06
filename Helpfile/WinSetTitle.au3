Example()

Func Example()
	; Run Notepad
	Run("notepad.exe")

	; Wait 10 seconds for the Notepad window to appear.
	Local $hWnd = WinWait("[CLASS:Notepad]", "", 10)

	; Set the title of the Notepad window using the handle returned by WinWait.
	WinSetTitle($hWnd, "", "New Notepad Title - AutoIt")

	; Wait for 2 seconds to display the Notepad window and the new title.
	Sleep(2000)

	; Close the Notepad window using the handle returned by WinWait.
	WinClose($hWnd)
EndFunc   ;==>Example
