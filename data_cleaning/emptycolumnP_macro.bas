Sub DeleteRowsWithEmptyP()
    Dim lastRow As Long
    Dim i As Long
    
    ' Find the last row in column P
    lastRow = Cells(Rows.Count, "P").End(xlUp).Row
    
    ' Loop through rows in reverse order to avoid issues with deleting rows
    For i = lastRow To 1 Step -1
        ' Check if the value in column P is empty
        If IsEmpty(Cells(i, "P").Value) Then
            ' Delete the entire row if column P is empty
            Rows(i).Delete
        End If
    Next i
End Sub

