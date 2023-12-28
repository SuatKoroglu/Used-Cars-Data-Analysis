Attribute VB_Name = "Module2"
Sub ReplaceColumnDWithNumbers()
    Dim lastRow As Long
    Dim currentRow As Long
    Dim currentValue As String

    ' Find the last row with data in Column D
    lastRow = Cells(Rows.Count, 4).End(xlUp).Row

    ' Loop through each row starting from row 2
    For currentRow = 2 To lastRow
        ' Get the current value in Column D
        currentValue = Cells(currentRow, 4).Value

        ' Check the current value and replace with a number
        Select Case currentValue
            Case "Diesel"
                Cells(currentRow, 4).Value = 0
            Case "Hybrid"
                Cells(currentRow, 4).Value = 1
            Case "Petrol"
                Cells(currentRow, 4).Value = 2
            Case "Other"
                Cells(currentRow, 4).Value = 3
        End Select
    Next currentRow
End Sub

