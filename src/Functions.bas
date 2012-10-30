Attribute VB_Name = "Functions"
Public animals(0 To 9) As Integer
Public battle(0 To 9) As Integer
Public game_round As Integer
Public game_state


Sub setup_newgame()
    game_round = 1
    For i = 0 To 9
        animals(i) = CInt((20 - 1 + 1) * Rnd + 1)
    Next i
            
    frmMain.tmr1.Enabled = True
    game_state = 1
    frmMain.lblMesages.Caption = "Welcome to Thomas's Natural Selection Simulator. This is the first generation."
    draw_screen
End Sub

Sub setup_battle()
    
    'fill the battle array with the numbers 0 to 9
    
    battle(0) = Int((9 - 0 + 1) * Rnd + 0)
    
    For i = 1 To 9
        number_ok = False
        While number_ok = False
            battle(i) = Int((9 - 0 + 1) * Rnd + 0)
            number_ok = True
            For j = 0 To i - 1
                If battle(j) = battle(i) Then
                    number_ok = False
                End If
            Next j
        Wend
    Next i
   
   frmMain.lblMesages.Caption = "All the animals are paired up ready to fight"
  
  game_state = 2
  draw_screen
End Sub

Sub setup_mating()

    frmMain.imgCover.Visible = True
    frmMain.imgCover.Visible = False

    If animals(battle(0)) = 0 Then
        animals(battle(0)) = CInt(animals(battle(1)) - 2 + 4 * Rnd)
    Else: animals(battle(1)) = CInt(animals(battle(0)) - -2 + 4 * Rnd)
    End If
    
    If animals(battle(2)) = 0 Then
        animals(battle(2)) = CInt(animals(battle(3)) - 2 + 4 * Rnd)
    Else: animals(battle(3)) = CInt(animals(battle(2)) - 2 + 4 * Rnd)
    End If
    
    If animals(battle(4)) = 0 Then
        animals(battle(4)) = CInt(animals(battle(5)) - 2 + 4 * Rnd)
    Else: animals(battle(5)) = CInt(animals(battle(4)) - 2 + 4 * Rnd)
    End If
    
    If animals(battle(6)) = 0 Then
        animals(battle(6)) = CInt(animals(battle(7)) - 2 + 4 * Rnd)
    Else: animals(battle(7)) = CInt(animals(battle(6)) - 2 + 4 * Rnd)
    End If
    
    If animals(battle(8)) = 0 Then
        animals(battle(8)) = CInt(animals(battle(9)) - 2 + 4 * Rnd)
    Else: animals(battle(9)) = CInt(animals(battle(8)) - 2 + 4 * Rnd)
    End If
        
        game_state = 4
        frmMain.lblMesages.Caption = "The Survivors of the fight have passed on there DNA to offspring. The offspring will be similar to them."
    draw_screen

End Sub

Sub setup_newround()
    game_round = game_round + 1
        frmMain.lblMesages.Caption = "A new generation is born and the cycle starts over."
        game_state = 1
    draw_screen
    
End Sub

Sub draw_screen()

    
    averagevar = animals(0) + animals(1) + animals(2) + animals(3) + animals(4) + animals(5) + animals(6) + animals(7) + animals(8) + animals(9)
    averagevar = averagevar / 10
    frmMain.lblAverage.Caption = averagevar
    
    frmMain.lblGeneration.Caption = game_round
    
    For i = 0 To 9
        If animals(i) = 0 Then
            frmMain.imgSpace(i).Visible = False
            frmMain.imgSpace(i).Tag = "Baby"
        Else:
            frmMain.imgSpace(i).Visible = True
            Select Case game_state
                Case 1
                    frmMain.imgSpace(i).Picture = frmMain.imgExampleNormal.Picture
                Case 2
                    frmMain.imgSpace(i).Picture = frmMain.imgExampleBattle.Picture
                Case 3
                    frmMain.imgSpace(i).Picture = frmMain.imgExampleNormal.Picture
                Case 4
                    If frmMain.imgSpace(i).Tag = "Baby" Then
                        frmMain.imgSpace(i).Picture = frmMain.imgExampleBaby.Picture
                        frmMain.imgSpace(i).Tag = ""
                    Else
                        frmMain.imgSpace(i).Picture = frmMain.imgExampleNormal.Picture
                    End If
            End Select
                
            frmMain.imgSpace(i).Width = animals(i) * 30
            frmMain.imgSpace(i).Height = animals(i) * 30
        End If
    Next i
    
    If game_state = 2 Then
        frmMain.Line (frmMain.imgSpace(battle(0)).Left, frmMain.imgSpace(battle(0)).Top)-(frmMain.imgSpace(battle(1)).Left, frmMain.imgSpace(battle(1)).Top)
        frmMain.Line (frmMain.imgSpace(battle(2)).Left, frmMain.imgSpace(battle(2)).Top)-(frmMain.imgSpace(battle(3)).Left, frmMain.imgSpace(battle(3)).Top)
        frmMain.Line (frmMain.imgSpace(battle(4)).Left, frmMain.imgSpace(battle(4)).Top)-(frmMain.imgSpace(battle(5)).Left, frmMain.imgSpace(battle(5)).Top)
        frmMain.Line (frmMain.imgSpace(battle(6)).Left, frmMain.imgSpace(battle(6)).Top)-(frmMain.imgSpace(battle(7)).Left, frmMain.imgSpace(battle(7)).Top)
        frmMain.Line (frmMain.imgSpace(battle(8)).Left, frmMain.imgSpace(battle(8)).Top)-(frmMain.imgSpace(battle(9)).Left, frmMain.imgSpace(battle(9)).Top)
    End If
    End Sub

Sub setup_elimination()
       If animals(battle(0)) > animals(battle(1)) Then
        animals(battle(1)) = 0
    Else: animals(battle(0)) = 0
    End If
    
     If animals(battle(2)) > animals(battle(3)) Then
        animals(battle(3)) = 0
    Else: animals(battle(2)) = 0
    End If
    
     If animals(battle(4)) > animals(battle(5)) Then
        animals(battle(5)) = 0
    Else: animals(battle(4)) = 0
    End If
    
     If animals(battle(6)) > animals(battle(7)) Then
        animals(battle(7)) = 0
    Else: animals(battle(6)) = 0
    End If
    
     If animals(battle(8)) > animals(battle(9)) Then
        animals(battle(9)) = 0
    Else: animals(battle(8)) = 0
    End If
    
    game_state = 3
    frmMain.lblMesages.Caption = "The animals faught. Half have been wiped out."
    draw_screen
  
End Sub

