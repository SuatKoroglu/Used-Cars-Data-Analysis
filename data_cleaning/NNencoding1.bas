Attribute VB_Name = "Module1"
Sub ReplaceWithNumbers()
    Dim lastRow As Long
    Dim currentRow As Long
    Dim currentValue As String

    ' Find the last row with data in Column B
    lastRow = Cells(Rows.Count, 2).End(xlUp).Row

    ' Loop through each row starting from row 2
    For currentRow = 2 To lastRow
        ' Get the current value in Column B
        currentValue = Cells(currentRow, 2).Value

        ' Check the current value and replace with a number
        Select Case currentValue
            Case "Manual"
                Cells(currentRow, 2).Value = 0
            Case "Semi-Auto"
                Cells(currentRow, 2).Value = 1
            Case "Automatic"
                Cells(currentRow, 2).Value = 2
            Case "Other"
                Cells(currentRow, 2).Value = 3
        End Select
    Next currentRow
End Sub

