Attribute VB_Name = "Module4"
Sub ReplaceColumnJWithNumbers()
    Dim lastRow As Long
    Dim currentRow As Long
    Dim currentValue As String

    ' Find the last row with data in Column J
    lastRow = Cells(Rows.Count, 10).End(xlUp).Row

    ' Loop through each row starting from row 2
    For currentRow = 2 To lastRow
        ' Get the current value in Column J
        currentValue = Cells(currentRow, 10).Value

        ' Check the current value and replace with a number
        Select Case currentValue
            Case "Toyota"
                Cells(currentRow, 10).Value = 0
            Case "Mercedes-Benz"
                Cells(currentRow, 10).Value = 1
            Case "Mitsubishi"
                Cells(currentRow, 10).Value = 2
            Case "Nissan"
                Cells(currentRow, 10).Value = 3
            Case "Porsche"
                Cells(currentRow, 10).Value = 4
            Case "Renault"
                Cells(currentRow, 10).Value = 5
            Case "Rolls Royce"
                Cells(currentRow, 10).Value = 6
            Case "Land Rover"
                Cells(currentRow, 10).Value = 7
            Case "Ford"
                Cells(currentRow, 10).Value = 8
            Case "BMW"
                Cells(currentRow, 10).Value = 9
            Case "Volkswagen"
                Cells(currentRow, 10).Value = 10
            Case "Mazda"
                Cells(currentRow, 10).Value = 11
            Case "Skoda"
                Cells(currentRow, 10).Value = 12
            Case "Jaguar"
                Cells(currentRow, 10).Value = 13
            Case "Suzuki"
                Cells(currentRow, 10).Value = 14
            Case "Audi"
                Cells(currentRow, 10).Value = 15
        End Select
    Next currentRow
End Sub

