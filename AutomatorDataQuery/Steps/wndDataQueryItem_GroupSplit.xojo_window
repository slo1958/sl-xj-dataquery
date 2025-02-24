#tag DesktopWindow
Begin DesktopWindow wndDataQueryItem_GroupSplit
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   Composite       =   False
   DefaultLocation =   0
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   Height          =   251
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   True
   Title           =   "Definition of a GroupSplit"
   Type            =   0
   Visible         =   True
   Width           =   666
   Begin Label st_Name
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   12.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Label:"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   6
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   88
   End
   Begin TextField efName
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF00
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   12.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   110
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   6
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   329
   End
   Begin Label stt_CurrentPage
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   12.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Split by"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   52
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   88
   End
   Begin DesktopButton btn_close
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Close"
      Default         =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   566
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   199
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin DesktopPagePanel PagePanel1
      AllowAutoDeactivate=   True
      Enabled         =   True
      Height          =   193
      Index           =   -2147483648
      Left            =   99
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      PanelCount      =   2
      Panels          =   ""
      Scope           =   2
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   False
      Tooltip         =   ""
      Top             =   38
      Transparent     =   False
      Value           =   1
      Visible         =   True
      Width           =   429
      Begin DesktopButton btn_AddDimension
         AllowAutoDeactivate=   True
         Bold            =   True
         Cancel          =   False
         Caption         =   "+"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   22
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   340
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   173
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   20
      End
      Begin DesktopPopupMenu ppFieldDimension
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   3
         InitialParent   =   "PagePanel1"
         InitialValue    =   "dummyfield1\r\ndummyfield2\r\ndummyfield3\r\ndummyfield4\r\n"
         Italic          =   False
         Left            =   112
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   4
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   123
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   180
      End
      Begin DesktopPopupMenu ppFieldDimension
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   4
         InitialParent   =   "PagePanel1"
         InitialValue    =   "dummyfield1\r\ndummyfield2\r\ndummyfield3\r\ndummyfield4\r\n"
         Italic          =   False
         Left            =   112
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   6
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   148
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   180
      End
      Begin DesktopPopupMenu ppFieldDimension
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   6
         InitialParent   =   "PagePanel1"
         InitialValue    =   "dummyfield1\r\ndummyfield2\r\ndummyfield3\r\ndummyfield4\r\n"
         Italic          =   False
         Left            =   112
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   10
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   199
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   180
      End
      Begin DesktopPopupMenu ppFieldDimension
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   1
         InitialParent   =   "PagePanel1"
         InitialValue    =   "dummyfield1\r\ndummyfield2\r\ndummyfield3\r\ndummyfield4\r\n"
         Italic          =   False
         Left            =   112
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   12
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   74
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   180
      End
      Begin DesktopPopupMenu ppFieldDimension
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   0
         InitialParent   =   "PagePanel1"
         InitialValue    =   "dummyfield1\r\ndummyfield2\r\ndummyfield3\r\ndummyfield4\r\n"
         Italic          =   False
         Left            =   112
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   14
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   50
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   180
      End
      Begin DesktopPopupMenu ppFieldMeasure
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   0
         InitialParent   =   "PagePanel1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   111
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         SelectedRowIndex=   0
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   75
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   143
      End
      Begin DesktopCheckBox ckb_SumAllMeasures
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Sum all measures"
         Enabled         =   False
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   111
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   51
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         VisualState     =   1
         Width           =   152
      End
      Begin DesktopCheckBox ckb_HasMin
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Min"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   0
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   266
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   2
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   75
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         VisualState     =   0
         Width           =   60
      End
      Begin DesktopCheckBox ckb_HasAvg
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Avg"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   0
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   334
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   3
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   75
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         VisualState     =   0
         Width           =   60
      End
      Begin DesktopCheckBox ckb_HasMax
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Max"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   0
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   402
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   4
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   75
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         VisualState     =   0
         Width           =   60
      End
      Begin DesktopButton btn_RemoveMeasure
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "-"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   0
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   465
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   2
         TabIndex        =   5
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   75
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   22
      End
      Begin DesktopButton btn_AddMeasure
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "+"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   499
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   2
         TabIndex        =   6
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   75
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   22
      End
      Begin DesktopPopupMenu ppFieldDimension
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   2
         InitialParent   =   "PagePanel1"
         InitialValue    =   "dummyfield1\r\ndummyfield2\r\ndummyfield3\r\ndummyfield4\r\n"
         Italic          =   False
         Left            =   112
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   15
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   98
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   180
      End
      Begin DesktopPopupMenu ppFieldDimension
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   5
         InitialParent   =   "PagePanel1"
         InitialValue    =   "dummyfield1\r\ndummyfield2\r\ndummyfield3\r\ndummyfield4\r\n"
         Italic          =   False
         Left            =   112
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         SelectedRowIndex=   0
         TabIndex        =   16
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   173
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   180
      End
      Begin DesktopButton btn_RemoveDimension
         AllowAutoDeactivate=   True
         Bold            =   True
         Cancel          =   False
         Caption         =   "-"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   0
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   304
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   17
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   50
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   20
      End
      Begin DesktopButton btn_RemoveDimension
         AllowAutoDeactivate=   True
         Bold            =   True
         Cancel          =   False
         Caption         =   "-"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   6
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   304
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   18
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   199
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   20
      End
      Begin DesktopButton btn_RemoveDimension
         AllowAutoDeactivate=   True
         Bold            =   True
         Cancel          =   False
         Caption         =   "-"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   5
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   304
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   19
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   173
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   20
      End
      Begin DesktopButton btn_RemoveDimension
         AllowAutoDeactivate=   True
         Bold            =   True
         Cancel          =   False
         Caption         =   "-"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   4
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   304
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   20
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   148
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   20
      End
      Begin DesktopButton btn_RemoveDimension
         AllowAutoDeactivate=   True
         Bold            =   True
         Cancel          =   False
         Caption         =   "-"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   3
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   304
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   21
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   123
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   20
      End
      Begin DesktopButton btn_RemoveDimension
         AllowAutoDeactivate=   True
         Bold            =   True
         Cancel          =   False
         Caption         =   "-"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   2
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   304
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   22
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   98
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   20
      End
      Begin DesktopButton btn_RemoveDimension
         AllowAutoDeactivate=   True
         Bold            =   True
         Cancel          =   False
         Caption         =   "-"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   1
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   304
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   23
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   74
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   20
      End
      Begin DesktopCheckBox ckb_CountRows
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Count rows"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   266
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   7
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   51
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         VisualState     =   0
         Width           =   100
      End
      Begin DesktopPopupMenu ppFieldMeasure
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   1
         InitialParent   =   "PagePanel1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   111
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         SelectedRowIndex=   0
         TabIndex        =   8
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   99
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   143
      End
      Begin DesktopCheckBox ckb_HasMin
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Min"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   1
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   266
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   9
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   99
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         VisualState     =   0
         Width           =   60
      End
      Begin DesktopCheckBox ckb_HasAvg
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Avg"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   1
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   334
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   10
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   99
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         VisualState     =   0
         Width           =   60
      End
      Begin DesktopCheckBox ckb_HasMax
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Max"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   1
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   402
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   11
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   99
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         VisualState     =   0
         Width           =   60
      End
      Begin DesktopButton btn_RemoveMeasure
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "-"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   1
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   465
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   2
         TabIndex        =   12
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   99
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   22
      End
      Begin DesktopPopupMenu ppFieldMeasure
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   2
         InitialParent   =   "PagePanel1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   111
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         SelectedRowIndex=   0
         TabIndex        =   13
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   124
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   143
      End
      Begin DesktopCheckBox ckb_HasMin
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Min"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   2
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   266
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   14
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   124
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         VisualState     =   0
         Width           =   60
      End
      Begin DesktopCheckBox ckb_HasAvg
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Avg"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   2
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   334
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   15
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   124
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         VisualState     =   0
         Width           =   60
      End
      Begin DesktopCheckBox ckb_HasMax
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Max"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   2
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   402
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   16
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   124
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         VisualState     =   0
         Width           =   60
      End
      Begin DesktopButton btn_RemoveMeasure
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "-"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   2
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   465
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   2
         TabIndex        =   17
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   124
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   22
      End
      Begin DesktopPopupMenu ppFieldMeasure
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   3
         InitialParent   =   "PagePanel1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   111
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         SelectedRowIndex=   0
         TabIndex        =   18
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   149
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   143
      End
      Begin DesktopCheckBox ckb_HasMin
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Min"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   3
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   266
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   19
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   149
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         VisualState     =   0
         Width           =   60
      End
      Begin DesktopCheckBox ckb_HasAvg
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Avg"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   3
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   334
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   20
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   149
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         VisualState     =   0
         Width           =   60
      End
      Begin DesktopCheckBox ckb_HasMax
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Max"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   3
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   402
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   21
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   149
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         VisualState     =   0
         Width           =   60
      End
      Begin DesktopButton btn_RemoveMeasure
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "-"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   3
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   465
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   2
         TabIndex        =   22
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   149
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   22
      End
      Begin DesktopPopupMenu ppFieldMeasure
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   4
         InitialParent   =   "PagePanel1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   111
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         SelectedRowIndex=   0
         TabIndex        =   23
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   173
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   143
      End
      Begin DesktopCheckBox ckb_HasMin
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Min"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   4
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   266
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   24
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   173
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         VisualState     =   0
         Width           =   60
      End
      Begin DesktopCheckBox ckb_HasAvg
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Avg"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   4
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   334
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   25
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   173
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         VisualState     =   0
         Width           =   60
      End
      Begin DesktopCheckBox ckb_HasMax
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Max"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   4
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   402
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   26
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   173
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         VisualState     =   0
         Width           =   60
      End
      Begin DesktopButton btn_RemoveMeasure
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "-"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   4
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   465
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   2
         TabIndex        =   27
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   173
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   22
      End
      Begin DesktopPopupMenu ppFieldMeasure
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   5
         InitialParent   =   "PagePanel1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   111
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         SelectedRowIndex=   0
         TabIndex        =   28
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   198
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   143
      End
      Begin DesktopCheckBox ckb_HasMin
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Min"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   5
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   266
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   29
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   198
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         VisualState     =   0
         Width           =   60
      End
      Begin DesktopCheckBox ckb_HasAvg
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Avg"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   5
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   334
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   30
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   198
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         VisualState     =   0
         Width           =   60
      End
      Begin DesktopCheckBox ckb_HasMax
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Max"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   5
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   402
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   31
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   198
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         VisualState     =   0
         Width           =   60
      End
      Begin DesktopButton btn_RemoveMeasure
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "-"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   5
         InitialParent   =   "PagePanel1"
         Italic          =   False
         Left            =   465
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   2
         TabIndex        =   32
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   198
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   22
      End
   End
   Begin DesktopButton btn_ChangeTo
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Aggregate"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   22
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   201
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Opening()
		  
		  self.LastGroupByItem = 0
		  self.LastMeasure = 0
		  
		  // Dimensions
		  
		   for i as integer = 1 to curStep.MaxDimensions
		    ppFieldDimension(i).visible=false
		    btn_RemoveDimension(i).Visible=false
		    
		  next
		  
		  btn_AddDimension.top=btn_RemoveDimension(0).top
		  
		  btn_RemoveDimension(0).Enabled=false
		  
		  // Measures
		  
		  for i as integer = 1 to curStep.MaxMeasure
		    ppFieldMeasure(i).visible=false
		    btn_RemoveMeasure(i).Visible=false
		    ckb_HasMin(i).Visible = false
		    ckb_HasAvg(i).Visible = False
		    ckb_HasMax(i).Visible= False
		  next
		  
		  btn_AddMeasure.top=btn_RemoveMeasure(0).top
		  
		  btn_RemoveMeasure(0).Enabled=false
		   
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function addOneDimension() As integer
		  
		  if LastGroupByItem<curStep.MaxDimensions  then LastGroupByItem=LastGroupByItem+1
		  
		  ppFieldDimension(LastGroupByItem).Visible=true
		  btn_RemoveDimension(LastGroupByItem).visible=true 
		  
		  prepLineDimension LastGroupByItem
		  
		  btn_AddDimension.top=btn_RemoveDimension(LastGroupByItem).top
		  
		  //rb_sumNumber.top=btn_add.top+25
		  // btn_close.top=btn_add.top+25
		  
		  // wndDataQueryItem_GroupSplit.Height=ppFieldA(0).top+25*(lastItem+1+1)
		  
		  return LastGroupByItem
		  
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function addOneMeasure() As integer
		  
		  if LastMeasure<curStep.MaxMeasure  then LastMeasure=LastMeasure+1
		  
		  ppFieldMeasure(LastMeasure).Visible=true
		  btn_RemoveMeasure(LastMeasure).visible=true 
		  ckb_HasMin(LastMeasure).Visible = true
		  ckb_HasAvg(LastMeasure).Visible = true
		  ckb_HasMax(LastMeasure).Visible= true
		  
		  PrepLineMeasure LastMeasure
		  
		  btn_AddMeasure.top=btn_RemoveMeasure(LastMeasure).top
		  
		  //rb_sumNumber.top=btn_add.top+25
		  // btn_close.top=btn_add.top+25
		  
		  // wndDataQueryItem_GroupSplit.Height=ppFieldA(0).top+25*(lastItem+1+1)
		  
		  return LastMeasure
		  
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ChangePage(ChangeTo as string)
		  
		  
		  select case ChangeTo
		    
		  case "Aggregate"
		    PagePanel1.SelectedPanelIndex = 1
		    stt_CurrentPage.Text = "Aggregate"
		    btn_ChangeTo.Caption = "Split by"
		    
		  case "Split by"
		    PagePanel1.SelectedPanelIndex = 0
		    stt_CurrentPage.Text = "Split by"
		    btn_ChangeTo.Caption = "Aggregate"
		    
		  case else
		    
		  end select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub doSave()
		  
		  
		  curStep.name=efName.text
		  
		  curStep.sFieldDImension.RemoveAll
		  for i as integer = 0 to  curStep.MaxDimensions
		    if ppFieldDimension(i).Visible and ppFieldDimension(i).SelectedRowText.Length > 0 then
		      curStep.sFieldDImension.Add(ppFieldDimension(i).SelectedRowText)
		       
		    else
		       
		    end if
		    
		  next
		  
		  
		  curStep.sFieldMeasure.RemoveAll
		  curStep.tFieldMeasure.RemoveAll
		  
		  for i as integer = 0 to curStep.MaxMeasure
		    var bValue as integer = 0
		    if ppFieldMeasure(i).Visible and ppFieldMeasure(i).SelectedRowText.Length > 0 then
		      curStep.sFieldMeasure.add(ppFieldMeasure(i).SelectedRowText)
		      
		      if ckb_HasMin(i).Value then bValue = bvalue +  curStep.cstHasMin
		      if ckb_HasAvg(i).Value then bValue = bvalue +  curStep.cstHasAvg
		      if ckb_HasMax(i).Value then bValue = bvalue +  curStep.cstHasMax
		      
		      curStep.tFieldMeasure.add(bValue)
		      
		    end if
		    
		  next
		  
		  curStep.IncludeCount = ckb_CountRows.value
		   
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub prepLineDimension(theLine as integer)
		  
		  if curStep.prevDataQueryItem<>nil then
		    ppFieldDimension(theLine).RemoveAllRows
		    
		    
		    for i as integer = 0 to ubound(curStep.prevDataQueryItem.keyFields)
		      if curStep.prevDataQueryItem.keyFields(i) <> nil then
		        ppFieldDimension(theLine).AddRow curStep.prevDataQueryItem.keyFields(i).Name 
		        
		      end if
		    next
		    
		  end if
		  
		  return
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PrepLineMeasure(theLine as integer)
		  
		  
		  if curStep.prevDataQueryItem<>nil then
		    ppFieldMeasure(theLine).RemoveAllRows
		    
		    for i as integer = 0 to ubound(curStep.prevDataQueryItem.valueFields)
		      ppFieldMeasure(theLine).AddRow(curStep.prevDataQueryItem.valueFields(i))
		      
		    next
		    
		  end if
		  
		  return 
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowMe(theStep as clDataQueryItem_GroupSplit)
		  
		  var j  as integer
		  
		  curStep=theStep
		  
		  prepLineDimension 0
		  PrepLineMeasure 0
		  
		  efName.text=curStep.getTitle
		  
		  if curStep.sFieldDImension.Count = 0 then
		    ppFieldDimension(0).SelectedRowIndex = 0
		    
		  else
		    ppFieldDimension(0).findItem(curStep.sFieldDImension(0))
		    
		  end if
		  
		  for i as integer = 1 to curStep.sFieldDImension.LastIndex
		    j=addOneDimension
		    ppFieldDimension(j).findItem(curStep.sFieldDImension(i))
		    
		  next
		  
		  //
		  // Prepare measures
		  //
		  if curStep.sFieldMeasure.Count = 0 then
		    ppFieldMeasure(0).SelectedRowIndex = 0
		    
		  else
		    ppFieldMeasure(0).findItem(curStep.sFieldMeasure(0))
		    ckb_HasMin(0).Value = bitand(curStep.tFieldMeasure(0), curStep.cstHasMin) = curStep.cstHasMin
		    ckb_HasAvg(0).Value = bitand(curStep.tFieldMeasure(0), curStep.cstHasAvg) = curStep.cstHasAvg
		    ckb_HasMax(0).Value = bitand(curStep.tFieldMeasure(0), curStep.cstHasMax) = curStep.cstHasMax
		    
		  end if
		  
		  
		  for i as integer = 1 to curStep.sFieldMeasure.LastIndex
		    j=addOneMeasure
		    ppFieldMeasure(j).findItem(curStep.sFieldMeasure(i))
		    
		    ckb_HasMin(j).Value = bitand(curStep.tFieldMeasure(i), curStep.cstHasMin) = curStep.cstHasMin
		    ckb_HasAvg(j).Value = bitand(curStep.tFieldMeasure(i), curStep.cstHasAvg) = curStep.cstHasAvg
		    ckb_HasMax(j).Value = bitand(curStep.tFieldMeasure(i), curStep.cstHasMax) = curStep.cstHasMax
		    
		    
		  next
		  
		  ckb_CountRows.value = curStep.IncludeCount
		  
		  showmodal
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		curStep As clDataQueryItem_GroupSplit
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected LastGroupByItem As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		LastMeasure As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events btn_close
	#tag Event
		Sub Pressed()
		  
		  doSave
		  
		  close
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_AddDimension
	#tag Event
		Sub Pressed()
		  
		  var i  as integer
		  i=addOneDimension
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_RemoveMeasure
	#tag Event
		Sub Pressed(index as Integer)
		  var i  as integer
		  dim y as integer
		  dim last as integer
		  
		  
		  for i=index+1 to LastMeasure
		    y=ppFieldMeasure(i).top-25
		    ppFieldMeasure(i-1).SelectedRowIndex=ppFieldMeasure(i).SelectedRowIndex
		  Next
		  
		  i=LastMeasure
		  
		  ppFieldMeasure(i).visible=false
		  
		  btn_RemoveMeasure(i).Visible=false
		  
		  ckb_HasMin(i).Visible = false
		  ckb_HasAvg(i).Visible = false
		  ckb_HasMax(i).Visible= false
		  
		  LastMeasure=LastMeasure-1
		  
		  btn_AddMeasure.top=btn_RemoveMeasure(LastMeasure).top
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_AddMeasure
	#tag Event
		Sub Pressed()
		  
		  var i  as integer
		  i=addOneMeasure
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_RemoveDimension
	#tag Event
		Sub Pressed(index as Integer)
		  var i  as integer
		  dim y as integer
		  dim last as integer
		  
		  
		  for i=index+1 to LastGroupByItem
		    y=ppFieldDimension(i).top-25
		    ppFieldDimension(i-1).SelectedRowIndex=ppFieldDimension(i).SelectedRowIndex
		  next
		  
		  i=LastGroupByItem
		  
		  ppFieldDimension(i).visible=false
		  
		  btn_RemoveDimension(i).Visible=false
		  
		  LastGroupByItem=LastGroupByItem-1
		  
		  btn_AddDimension.top=btn_RemoveDimension(LastGroupByItem).top
		   
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_ChangeTo
	#tag Event
		Sub Pressed()
		  
		  ChangePage(me.Caption)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="ColorGroup"
		EditorType="ColorGroup"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Appearance"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="DesktopMenuBar"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
