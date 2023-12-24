Attribute VB_Name = "Module1"
Sub ModifyColumnJValues()
    Dim lastRow As Long
    Dim i As Long
    Dim cellValue As String
    
    ' Find the last row in column J
    lastRow = Cells(Rows.Count, "J").End(xlUp).Row
    
    ' Loop through rows in column J
    For i = 1 To lastRow
        ' Check if the value in column J contains "L"
        If InStr(1, Cells(i, "J").Value, "L") > 0 Or InStr(1, Cells(i, "J").Value, "l") > 0 Then
            ' Remove any non-numeric characters
            cellValue = Application.WorksheetFunction.Substitute(Cells(i, "J").Value, "L", "")
            cellValue = Application.WorksheetFunction.Substitute(Cells(i, "J").Value, "l", "")
            cellValue = Application.WorksheetFunction.Substitute(cellValue, ".", "")
            
            ' Check if it has 4 digits
            If Len(cellValue) < 4 Then
                ' Multiply by the appropriate factor to reach 4 digits
                cellValue = CStr(CDbl(cellValue) * 10 ^ (4 - Len(cellValue)))
            End If
            
            ' Add "cc" to the end
            cellValue = cellValue & "cc"
            
            ' Update the value in column J
            Cells(i, "J").Value = cellValue
        End If
    Next i
End Sub

