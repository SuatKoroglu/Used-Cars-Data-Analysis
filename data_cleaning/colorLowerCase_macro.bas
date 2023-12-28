Attribute VB_Name = "Module1"
Sub MakeColumnILowercase()
    Dim lastRow As Long
    Dim i As Long
    
    ' Find the last row in column I
    lastRow = Cells(Rows.Count, "I").End(xlUp).Row
    
    ' Loop through rows in column I
    For i = 1 To lastRow
        ' Convert the text to lowercase
        Cells(i, "I").Value = LCase(Cells(i, "I").Value)
    Next i
End Sub

