Attribute VB_Name = "Module3"
Sub ReplaceColumnHWithNumbers()
    Dim lastRow As Long
    Dim currentRow As Long
    Dim currentValue As String

    ' Find the last row with data in Column H
    lastRow = Cells(Rows.Count, 8).End(xlUp).Row

    ' Loop through each row starting from row 2
    For currentRow = 2 To lastRow
        ' Get the current value in Column H
        currentValue = Cells(currentRow, 8).Value

        ' Check the current value and replace with a number
        Select Case currentValue
            Case "4X4"
                Cells(currentRow, 8).Value = 0
            Case "Convertible"
                Cells(currentRow, 8).Value = 1
            Case "Coupe"
                Cells(currentRow, 8).Value = 2
            Case "Crossover"
                Cells(currentRow, 8).Value = 3
            Case "Estate"
                Cells(currentRow, 8).Value = 4
            Case "Four Wheel Drive"
                Cells(currentRow, 8).Value = 5
            Case "Hatchback"
                Cells(currentRow, 8).Value = 6
            Case "MPV"
                Cells(currentRow, 8).Value = 7
            Case "Other"
                Cells(currentRow, 8).Value = 8
            Case "Passenger Carrier"
                Cells(currentRow, 8).Value = 9
            Case "People Carrier"
                Cells(currentRow, 8).Value = 10
            Case "Pick Up"
                Cells(currentRow, 8).Value = 11
            Case "Roadster"
                Cells(currentRow, 8).Value = 12
            Case "SUV"
                Cells(currentRow, 8).Value = 13
            Case "Saloon"
                Cells(currentRow, 8).Value = 14
            Case "Sports"
                Cells(currentRow, 8).Value = 15
            Case "Station Wagon"
                Cells(currentRow, 8).Value = 16
        End Select
    Next currentRow
End Sub

