#include <FileConstants.au3>
#include <MsgBoxConstants.au3>

Example()

Func Example()
	; Create a constant variable in Local scope of the filepath that will be read/written to.
	Local Const $sFilePath = @TempDir & "\FileSetPos.txt"

	; Open the file for writing (overwrite the file) and store the handle to a variable.
	Local $hFileOpen = FileOpen($sFilePath, $FO_OVERWRITE)
	If $hFileOpen = -1 Then
		MsgBox($MB_SYSTEMMODAL, "", "An error occurred when reading the file.")
		Return False
	EndIf

	; Write data to the file using the handle returned by FileOpen.
	FileWriteLine($hFileOpen, "Line 1")
	FileWriteLine($hFileOpen, "Line 2")
	FileWriteLine($hFileOpen, "Line 3")

	; Flush the file to disk.
	FileFlush($hFileOpen)

	; Check file position and try to read contents for current position.
	MsgBox($MB_SYSTEMMODAL, "", "Position: " & FileGetPos($hFileOpen) & @CRLF & "Data: " & @CRLF & FileRead($hFileOpen))

	; Now, adjust the position to the beginning.
	FileSetPos($hFileOpen, 0, $FILE_BEGIN)

	; Check file position and try to read contents for current position.
	MsgBox($MB_SYSTEMMODAL, "", "Position: " & FileGetPos($hFileOpen) & @CRLF & "Data: " & @CRLF & FileRead($hFileOpen))

	; Close the handle returned by FileOpen.
	FileClose($hFileOpen)

	; Delete the temporary file.
	FileDelete($sFilePath)
EndFunc   ;==>Example
