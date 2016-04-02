Dim oWord
Set oWord = CreateObject("Word.Application")
oWord.Documents.Open("Z:\TEMP\tmp.docx")
oWord.Selection.WholeStory
oWord.Selection.Copy
oWord.Quit
Set oWord = Nothing