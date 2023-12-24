Attribute VB_Name = "Module1"
Sub DeleteRowsWithTax()

    Dim ws As Worksheet
    Dim lastRow As Long
    Dim i As Long

    ' Set the worksheet where you want to delete rows
    Set ws = ThisWorkbook.Sheets("Sheet1") ' Change "Sheet1" to your actual sheet name
    
    ' Find the last row in column G
    lastRow = ws.Cells(ws.Rows.Count, "G").End(xlUp).Row
    
    ' Loop through each row from bottom to top
    For i = lastRow To 1 Step -1
        ' Check if the cell in column G contains the string "Tax: "
        If InStr(1, ws.Cells(i, "G").Value, "Tax: ") > 0 Then
            ' Delete the entire row if the condition is met
            ws.Rows(i).Delete
        End If
    Next i

End Sub

