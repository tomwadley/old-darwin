VERSION 5.00
Begin VB.Form frmDebug 
   Caption         =   "Debug window"
   ClientHeight    =   2340
   ClientLeft      =   60
   ClientTop       =   390
   ClientWidth     =   8805
   LinkTopic       =   "Form1"
   ScaleHeight     =   2340
   ScaleWidth      =   8805
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   375
      Left            =   3600
      TabIndex        =   30
      Top             =   1320
      Width           =   1695
   End
   Begin VB.Label score 
      Caption         =   "Label1"
      Height          =   495
      Index           =   0
      Left            =   360
      TabIndex        =   29
      Top             =   1680
      Width           =   615
   End
   Begin VB.Label score 
      Caption         =   "Label1"
      Height          =   495
      Index           =   1
      Left            =   1200
      TabIndex        =   28
      Top             =   1680
      Width           =   615
   End
   Begin VB.Label score 
      Caption         =   "Label1"
      Height          =   495
      Index           =   2
      Left            =   2040
      TabIndex        =   27
      Top             =   1680
      Width           =   615
   End
   Begin VB.Label score 
      Caption         =   "Label1"
      Height          =   495
      Index           =   3
      Left            =   2880
      TabIndex        =   26
      Top             =   1680
      Width           =   615
   End
   Begin VB.Label score 
      Caption         =   "Label1"
      Height          =   495
      Index           =   4
      Left            =   3720
      TabIndex        =   25
      Top             =   1680
      Width           =   615
   End
   Begin VB.Label score 
      Caption         =   "Label1"
      Height          =   495
      Index           =   5
      Left            =   4560
      TabIndex        =   24
      Top             =   1680
      Width           =   615
   End
   Begin VB.Label score 
      Caption         =   "Label1"
      Height          =   495
      Index           =   6
      Left            =   5400
      TabIndex        =   23
      Top             =   1680
      Width           =   615
   End
   Begin VB.Label score 
      Caption         =   "Label1"
      Height          =   495
      Index           =   7
      Left            =   6240
      TabIndex        =   22
      Top             =   1680
      Width           =   615
   End
   Begin VB.Label score 
      Caption         =   "Label1"
      Height          =   495
      Index           =   8
      Left            =   7080
      TabIndex        =   21
      Top             =   1680
      Width           =   615
   End
   Begin VB.Label score 
      Caption         =   "Label1"
      Height          =   495
      Index           =   9
      Left            =   7920
      TabIndex        =   20
      Top             =   1680
      Width           =   615
   End
   Begin VB.Label battles 
      Caption         =   "Label1"
      Height          =   495
      Index           =   0
      Left            =   480
      TabIndex        =   19
      Top             =   720
      Width           =   615
   End
   Begin VB.Label battles 
      Caption         =   "Label1"
      Height          =   495
      Index           =   1
      Left            =   1080
      TabIndex        =   18
      Top             =   720
      Width           =   615
   End
   Begin VB.Label battles 
      Caption         =   "Label1"
      Height          =   495
      Index           =   2
      Left            =   2160
      TabIndex        =   17
      Top             =   720
      Width           =   615
   End
   Begin VB.Label battles 
      Caption         =   "Label1"
      Height          =   495
      Index           =   3
      Left            =   2760
      TabIndex        =   16
      Top             =   720
      Width           =   615
   End
   Begin VB.Label battles 
      Caption         =   "Label1"
      Height          =   495
      Index           =   4
      Left            =   3840
      TabIndex        =   15
      Top             =   720
      Width           =   615
   End
   Begin VB.Label battles 
      Caption         =   "Label1"
      Height          =   495
      Index           =   5
      Left            =   4560
      TabIndex        =   14
      Top             =   720
      Width           =   615
   End
   Begin VB.Label battles 
      Caption         =   "Label1"
      Height          =   495
      Index           =   6
      Left            =   5640
      TabIndex        =   13
      Top             =   720
      Width           =   615
   End
   Begin VB.Label battles 
      Caption         =   "Label1"
      Height          =   495
      Index           =   7
      Left            =   6360
      TabIndex        =   12
      Top             =   720
      Width           =   615
   End
   Begin VB.Label battles 
      Caption         =   "Label1"
      Height          =   495
      Index           =   8
      Left            =   7440
      TabIndex        =   11
      Top             =   720
      Width           =   615
   End
   Begin VB.Label battles 
      Caption         =   "Label1"
      Height          =   495
      Index           =   9
      Left            =   8040
      TabIndex        =   10
      Top             =   720
      Width           =   615
   End
   Begin VB.Label a 
      Caption         =   "Label1"
      Height          =   495
      Index           =   9
      Left            =   7920
      TabIndex        =   9
      Top             =   120
      Width           =   615
   End
   Begin VB.Label a 
      Caption         =   "Label1"
      Height          =   495
      Index           =   8
      Left            =   7320
      TabIndex        =   8
      Top             =   120
      Width           =   615
   End
   Begin VB.Label a 
      Caption         =   "Label1"
      Height          =   495
      Index           =   7
      Left            =   6240
      TabIndex        =   7
      Top             =   120
      Width           =   615
   End
   Begin VB.Label a 
      Caption         =   "Label1"
      Height          =   495
      Index           =   6
      Left            =   5520
      TabIndex        =   6
      Top             =   120
      Width           =   615
   End
   Begin VB.Label a 
      Caption         =   "Label1"
      Height          =   495
      Index           =   5
      Left            =   4440
      TabIndex        =   5
      Top             =   120
      Width           =   615
   End
   Begin VB.Label a 
      Caption         =   "Label1"
      Height          =   495
      Index           =   4
      Left            =   3720
      TabIndex        =   4
      Top             =   120
      Width           =   615
   End
   Begin VB.Label a 
      Caption         =   "Label1"
      Height          =   495
      Index           =   3
      Left            =   2760
      TabIndex        =   3
      Top             =   120
      Width           =   615
   End
   Begin VB.Label a 
      Caption         =   "Label1"
      Height          =   495
      Index           =   2
      Left            =   2040
      TabIndex        =   2
      Top             =   120
      Width           =   615
   End
   Begin VB.Label a 
      Caption         =   "Label1"
      Height          =   495
      Index           =   1
      Left            =   1080
      TabIndex        =   1
      Top             =   120
      Width           =   615
   End
   Begin VB.Label a 
      Caption         =   "Label1"
      Height          =   495
      Index           =   0
      Left            =   480
      TabIndex        =   0
      Top             =   120
      Width           =   615
   End
   Begin VB.Line Line1 
      X1              =   1920
      X2              =   1920
      Y1              =   0
      Y2              =   2040
   End
   Begin VB.Line Line2 
      X1              =   3600
      X2              =   3600
      Y1              =   0
      Y2              =   2040
   End
   Begin VB.Line Line3 
      X1              =   5280
      X2              =   5280
      Y1              =   120
      Y2              =   2160
   End
   Begin VB.Line Line4 
      X1              =   6960
      X2              =   6960
      Y1              =   120
      Y2              =   2160
   End
End
Attribute VB_Name = "frmDebug"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If game_state = 4 Then
setup_newround
End If

If game_state = 3 Then
setup_mating
End If
If game_state = 2 Then
setup_elimination
End If
If game_state = 1 Then
setup_battle
End If
'setup_battle
'setup_elimination
'setup_mating

End Sub
