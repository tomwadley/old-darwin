VERSION 5.00
Begin VB.Form frmMain 
   BackColor       =   &H00008000&
   Caption         =   "Natural Selection Simulator"
   ClientHeight    =   8415
   ClientLeft      =   60
   ClientTop       =   405
   ClientWidth     =   10440
   Icon            =   "frmMain.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   8415
   ScaleWidth      =   10440
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Timer tmr4 
      Enabled         =   0   'False
      Interval        =   6000
      Left            =   13800
      Top             =   10560
   End
   Begin VB.HScrollBar scrSpeed 
      Height          =   375
      Left            =   12240
      Max             =   30
      TabIndex        =   10
      Top             =   5400
      Value           =   6
      Width           =   1575
   End
   Begin VB.CommandButton cmdGeneration 
      Caption         =   "Next Generation"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   13920
      TabIndex        =   9
      ToolTipText     =   "Moves through a whole generation instantly."
      Top             =   5280
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.CommandButton cmdProceed 
      Caption         =   "Next Stage"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   14040
      TabIndex        =   8
      ToolTipText     =   "Goes to the next stage of the game. (eg Battle-Mating)"
      Top             =   4800
      Visible         =   0   'False
      Width           =   975
   End
   Begin VB.OptionButton optManuel 
      BackColor       =   &H0000C000&
      Caption         =   "Manuel"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   13920
      TabIndex        =   7
      ToolTipText     =   "You push a button to control when the next stage of the game arrives."
      Top             =   4440
      Width           =   1215
   End
   Begin VB.OptionButton optAutomatic 
      BackColor       =   &H0000C000&
      Caption         =   "Automatic"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   12240
      TabIndex        =   6
      ToolTipText     =   "The game is run by a timer. Every stage of the game takes so many seconds (Depending on what you set)"
      Top             =   4440
      Value           =   -1  'True
      Width           =   1575
   End
   Begin VB.Timer tmr3 
      Enabled         =   0   'False
      Interval        =   6000
      Left            =   13320
      Top             =   10560
   End
   Begin VB.Timer tmr2 
      Enabled         =   0   'False
      Interval        =   6000
      Left            =   12840
      Top             =   10560
   End
   Begin VB.Timer tmr1 
      Enabled         =   0   'False
      Interval        =   6000
      Left            =   12360
      Top             =   10560
   End
   Begin VB.Label lblSpeedcounter 
      Alignment       =   2  'Center
      BackColor       =   &H00008000&
      Caption         =   "6"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   12600
      TabIndex        =   21
      Top             =   4920
      Width           =   855
   End
   Begin VB.Image imgExampleNormal 
      Height          =   885
      Left            =   8760
      Picture         =   "frmMain.frx":0442
      Top             =   10080
      Visible         =   0   'False
      Width           =   1005
   End
   Begin VB.Image imgExampleBattle 
      Height          =   885
      Left            =   9840
      Picture         =   "frmMain.frx":3388
      Top             =   10080
      Visible         =   0   'False
      Width           =   1005
   End
   Begin VB.Label lblSpace 
      Alignment       =   2  'Center
      BackColor       =   &H00800000&
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   9
      Left            =   9720
      TabIndex        =   20
      Top             =   4680
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label lblSpace 
      Alignment       =   2  'Center
      BackColor       =   &H00800000&
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   8
      Left            =   5880
      TabIndex        =   19
      Top             =   3720
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label lblSpace 
      Alignment       =   2  'Center
      BackColor       =   &H00800000&
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   7
      Left            =   840
      TabIndex        =   18
      Top             =   960
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label lblSpace 
      Alignment       =   2  'Center
      BackColor       =   &H00800000&
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   6
      Left            =   4800
      TabIndex        =   17
      Top             =   840
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label lblSpace 
      Alignment       =   2  'Center
      BackColor       =   &H00800000&
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   5
      Left            =   9240
      TabIndex        =   16
      Top             =   8640
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label lblSpace 
      Alignment       =   2  'Center
      BackColor       =   &H00800000&
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   4
      Left            =   1440
      TabIndex        =   15
      Top             =   8640
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label lblSpace 
      Alignment       =   2  'Center
      BackColor       =   &H00800000&
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   3
      Left            =   8520
      TabIndex        =   14
      Top             =   1200
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label lblSpace 
      Alignment       =   2  'Center
      BackColor       =   &H00800000&
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   2
      Left            =   6600
      TabIndex        =   13
      Top             =   6720
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label lblSpace 
      Alignment       =   2  'Center
      BackColor       =   &H00800000&
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   1
      Left            =   3480
      TabIndex        =   12
      Top             =   5880
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Label lblSpace 
      Alignment       =   2  'Center
      BackColor       =   &H00800000&
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   0
      Left            =   1560
      TabIndex        =   11
      Top             =   3840
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.Line Line4 
      BorderWidth     =   3
      X1              =   12120
      X2              =   15240
      Y1              =   7560
      Y2              =   7560
   End
   Begin VB.Line Line3 
      BorderWidth     =   3
      X1              =   12120
      X2              =   15240
      Y1              =   5880
      Y2              =   5880
   End
   Begin VB.Line Line2 
      BorderWidth     =   3
      X1              =   12120
      X2              =   15240
      Y1              =   1560
      Y2              =   1560
   End
   Begin VB.Image imgExampleBaby 
      Height          =   885
      Left            =   10920
      Picture         =   "frmMain.frx":62CE
      Top             =   10080
      Visible         =   0   'False
      Width           =   1005
   End
   Begin VB.Label lblGeneration 
      Alignment       =   2  'Center
      BackColor       =   &H00008000&
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   13320
      TabIndex        =   5
      Top             =   6840
      Width           =   855
   End
   Begin VB.Label lblGenerationDescription 
      Alignment       =   2  'Center
      BackColor       =   &H00008000&
      Caption         =   "Current Generation"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   12360
      TabIndex        =   4
      Top             =   6000
      Width           =   2775
   End
   Begin VB.Label lblAverageDiscription 
      Alignment       =   2  'Center
      BackColor       =   &H00008000&
      Caption         =   "Average score for all animals"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   12360
      TabIndex        =   3
      Top             =   0
      Width           =   2775
   End
   Begin VB.Label lblSpeed 
      Alignment       =   2  'Center
      BackColor       =   &H00008000&
      Caption         =   $"frmMain.frx":9214
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2775
      Left            =   12360
      TabIndex        =   2
      Top             =   1560
      Width           =   2775
   End
   Begin VB.Label lblMesages 
      BackColor       =   &H00008000&
      Caption         =   "Mesages go here"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   3135
      Left            =   12360
      TabIndex        =   1
      Top             =   7680
      Width           =   2655
   End
   Begin VB.Line Line1 
      BorderWidth     =   5
      X1              =   12120
      X2              =   12120
      Y1              =   0
      Y2              =   11040
   End
   Begin VB.Label lblAverage 
      Alignment       =   2  'Center
      BackColor       =   &H00008000&
      Caption         =   "Average"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   12720
      TabIndex        =   0
      Top             =   840
      Width           =   2055
   End
   Begin VB.Image imgSpace 
      Height          =   885
      Index           =   9
      Left            =   9480
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   1005
   End
   Begin VB.Image imgSpace 
      Height          =   885
      Index           =   8
      Left            =   5640
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   1005
   End
   Begin VB.Image imgSpace 
      Height          =   885
      Index           =   7
      Left            =   600
      Stretch         =   -1  'True
      Top             =   600
      Width           =   1005
   End
   Begin VB.Image imgSpace 
      Height          =   885
      Index           =   6
      Left            =   4560
      Stretch         =   -1  'True
      Top             =   480
      Width           =   1005
   End
   Begin VB.Image imgSpace 
      Height          =   885
      Index           =   5
      Left            =   9000
      Stretch         =   -1  'True
      Top             =   8280
      Width           =   1005
   End
   Begin VB.Image imgSpace 
      Height          =   885
      Index           =   2
      Left            =   6360
      Stretch         =   -1  'True
      Top             =   6360
      Width           =   1005
   End
   Begin VB.Image imgSpace 
      Height          =   885
      Index           =   4
      Left            =   1200
      Stretch         =   -1  'True
      Top             =   8280
      Width           =   1005
   End
   Begin VB.Image imgSpace 
      Height          =   885
      Index           =   3
      Left            =   8280
      Stretch         =   -1  'True
      Top             =   840
      Width           =   1005
   End
   Begin VB.Image imgSpace 
      Height          =   885
      Index           =   1
      Left            =   3240
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   1005
   End
   Begin VB.Image imgSpace 
      Height          =   885
      Index           =   0
      Left            =   1320
      Stretch         =   -1  'True
      Top             =   3480
      Width           =   1005
   End
   Begin VB.Image imgCover 
      Height          =   9795
      Left            =   120
      Picture         =   "frmMain.frx":92C8
      Stretch         =   -1  'True
      Top             =   120
      Visible         =   0   'False
      Width           =   11730
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmdGeneration_Click()
    
    Select Case game_state
        Case 1
            setup_battle
            setup_elimination
            setup_mating
            setup_newround
        Case 2
            setup_elimination
            setup_mating
            setup_newround
        Case 3
            setup_mating
            setup_newround
        Case 4
            setup_newround
    End Select

End Sub

Private Sub cmdProceed_Click()
    Select Case game_state
        Case 1
            setup_battle
            game_state = 2
        Case 2
            setup_elimination
            game_state = 3
        Case 3
            setup_mating
            game_state = 4
        Case 4
            setup_newround
            game_state = 1
    End Select
    
    
End Sub


Private Sub Form_Load()
    Randomize
    setup_newgame
    
End Sub


Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
lblSpace(0).Visible = False
lblSpace(1).Visible = False
lblSpace(2).Visible = False
lblSpace(3).Visible = False
lblSpace(4).Visible = False
lblSpace(5).Visible = False
lblSpace(6).Visible = False
lblSpace(7).Visible = False
lblSpace(8).Visible = False
lblSpace(9).Visible = False
End Sub

Private Sub imgSpace_MouseMove(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    lblSpace(Index).Caption = animals(Index)
    lblSpace(Index).Visible = True
End Sub

Private Sub optAutomatic_Click()
    optManuel.Value = False
    cmdProceed.Visible = False
    cmdGeneration.Visible = False
    scrSpeed.Visible = True
    lblSpeedcounter.Visible = True
    
    Select Case game_state
        Case 1
            tmr1.Enabled = True
        Case 2
            tmr2.Enabled = True
        Case 3
            tmr3.Enabled = True
        Case 4
            tmr4.Enabled = True
    End Select
End Sub

Private Sub optManuel_Click()
    optAutomatic.Value = False
    cmdProceed.Visible = True
    cmdGeneration.Visible = True
    scrSpeed.Visible = False
    lblSpeedcounter.Visible = False
    
    tmr1.Enabled = False
    tmr2.Enabled = False
    tmr3.Enabled = False
    tmr4.Enabled = False
End Sub

Private Sub scrSpeed_Change()
    lblSpeedcounter.Caption = scrSpeed.Value
    newSpeed = scrSpeed.Value * 1000
    tmr1.Interval = newSpeed
    tmr2.Interval = newSpeed
    tmr3.Interval = newSpeed
    tmr4.Interval = newSpeed
    
    tmr1.Enabled = False
    tmr1.Enabled = False
    tmr1.Enabled = False
    tmr1.Enabled = False
    
    Select Case game_state
        Case 1
            tmr1.Enabled = True
        Case 2
            tmr2.Enabled = True
        Case 3
            tmr3.Enabled = True
        Case 4
            tmr4.Enabled = True
    End Select
End Sub

Private Sub tmr1_Timer()
    setup_battle
    tmr1.Enabled = False
    tmr2.Enabled = True
End Sub

Private Sub tmr2_Timer()
    setup_elimination
    tmr2.Enabled = False
    tmr3.Enabled = True
End Sub

Private Sub tmr3_Timer()
    setup_mating
    tmr3.Enabled = False
    tmr4.Enabled = True
End Sub

Private Sub tmr4_Timer()
    setup_newround
    tmr4.Enabled = False
    tmr1.Enabled = True
End Sub
