#tag DesktopWindow
Begin DesktopWindow wndDataQueryItem_Sort
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
   Height          =   267
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   True
   Title           =   "Definition of a Sort"
   Type            =   0
   Visible         =   True
   Width           =   476
   Begin DesktopCanvas Canvas1
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      Enabled         =   True
      Height          =   22
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   110
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   31
      Transparent     =   True
      Visible         =   True
      Width           =   322
      Begin TextField efLimit
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
         Height          =   20
         Hint            =   ""
         Index           =   -2147483648
         InitialParent   =   "Canvas1"
         Italic          =   False
         Left            =   311
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   32
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   57
      End
      Begin Label StaticText3
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
         InitialParent   =   "Canvas1"
         Italic          =   False
         Left            =   371
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "records"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   32
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   50
      End
      Begin DesktopRadioButton rb_Limit
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "All records"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   0
         InitialParent   =   "Canvas1"
         Italic          =   False
         Left            =   116
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   32
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   79
      End
      Begin DesktopRadioButton rb_limit
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Keep top"
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   1
         InitialParent   =   "Canvas1"
         Italic          =   False
         Left            =   209
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   False
         LockTop         =   False
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   32
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   87
      End
   End
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
      Left            =   8
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   1
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
      Width           =   100
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
      TabIndex        =   2
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
   Begin Label StaticText1
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
      Left            =   2
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Sort by"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   62
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin DesktopPopupMenu ppFieldA
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   0
      InitialParent   =   ""
      InitialValue    =   "dummyfield1\r\ndummyfield2\r\ndummyfield3\r\ndummyfield4\r\n"
      Italic          =   False
      Left            =   110
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   62
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin DesktopPopupMenu PopupMenu1
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   -465
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   6
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin DesktopButton pb_Remove
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   311
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   62
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin DesktopPopupMenu ppFieldA
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   1
      InitialParent   =   ""
      InitialValue    =   "dummyfield1\r\ndummyfield2\r\ndummyfield3\r\ndummyfield4\r\n"
      Italic          =   False
      Left            =   110
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   86
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin DesktopButton pb_Remove
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   311
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   86
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin DesktopPopupMenu ppFieldA
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   2
      InitialParent   =   ""
      InitialValue    =   "dummyfield1\r\ndummyfield2\r\ndummyfield3\r\ndummyfield4\r\n"
      Italic          =   False
      Left            =   110
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   110
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin DesktopButton pb_Remove
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   311
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   110
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin DesktopPopupMenu ppFieldA
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   3
      InitialParent   =   ""
      InitialValue    =   "dummyfield1\r\ndummyfield2\r\ndummyfield3\r\ndummyfield4\r\n"
      Italic          =   False
      Left            =   110
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   135
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin DesktopButton pb_Remove
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   311
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   135
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin DesktopPopupMenu ppFieldA
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   4
      InitialParent   =   ""
      InitialValue    =   "dummyfield1\r\ndummyfield2\r\ndummyfield3\r\ndummyfield4\r\n"
      Italic          =   False
      Left            =   110
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   160
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin DesktopButton pb_Remove
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   311
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   160
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin DesktopPopupMenu ppFieldA
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   5
      InitialParent   =   ""
      InitialValue    =   "dummyfield1\r\ndummyfield2\r\ndummyfield3\r\ndummyfield4\r\n"
      Italic          =   False
      Left            =   110
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   185
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin DesktopButton pb_Remove
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   311
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   185
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin DesktopPopupMenu ppFieldA
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   6
      InitialParent   =   ""
      InitialValue    =   "dummyfield1\r\ndummyfield2\r\ndummyfield3\r\ndummyfield4\r\n"
      Italic          =   False
      Left            =   110
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   211
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin DesktopButton pb_Remove
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   311
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   211
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin DesktopButton pb_Add
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
      InitialParent   =   ""
      Italic          =   False
      Left            =   338
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   184
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin DesktopButton pb_close
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
      Left            =   370
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
      Top             =   184
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   69
   End
   Begin DesktopPopupMenu ppFieldB
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   0
      InitialParent   =   ""
      InitialValue    =   "Asc\r\nDesc\r\n"
      Italic          =   False
      Left            =   255
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   62
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   52
   End
   Begin DesktopPopupMenu ppFieldB
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   1
      InitialParent   =   ""
      InitialValue    =   "Asc\r\nDesc\r\n"
      Italic          =   False
      Left            =   255
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   22
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   86
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   52
   End
   Begin DesktopPopupMenu ppFieldB
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   2
      InitialParent   =   ""
      InitialValue    =   "Asc\r\nDesc\r\n"
      Italic          =   False
      Left            =   255
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   23
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   110
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   52
   End
   Begin DesktopPopupMenu ppFieldB
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   3
      InitialParent   =   ""
      InitialValue    =   "Asc\r\nDesc\r\n"
      Italic          =   False
      Left            =   255
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   24
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   135
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   52
   End
   Begin DesktopPopupMenu ppFieldB
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   4
      InitialParent   =   ""
      InitialValue    =   "Asc\r\nDesc\r\n"
      Italic          =   False
      Left            =   255
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   25
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   160
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   52
   End
   Begin DesktopPopupMenu ppFieldB
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   5
      InitialParent   =   ""
      InitialValue    =   "Asc\r\nDesc\r\n"
      Italic          =   False
      Left            =   255
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   26
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   185
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   52
   End
   Begin DesktopPopupMenu ppFieldB
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   6
      InitialParent   =   ""
      InitialValue    =   "Asc\r\nDesc\r\n"
      Italic          =   False
      Left            =   255
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   27
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   211
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   52
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Opening()
		   
		  
		  lastItem=0
		  for i as integer = 1 to 6
		    ppFieldA(i).visible=false
		    ppFieldB(i).visible=false
		    pb_Remove(i).Visible=false
		  next
		  
		  pb_add.top=pb_remove(0).top
		  
		  pb_Remove(0).Enabled=false
		  
		  pb_close.top=pb_add.top+25
		  
		  wndDataQueryItem_Sort.Height=pb_close.top+25
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function addOne() As integer
		  if lastItem<curStep.maxItems  then lastItem=lastItem+1
		  
		  ppFielda(lastItem).Visible=true
		  ppFieldb(lastitem).Visible=true
		  
		  pb_remove(lastItem).visible=true 
		  
		  prepLine lastItem
		  
		  pb_add.top=pb_remove(lastItem).top
		  
		  
		  pb_close.top=pb_add.top+25
		  
		  wndDataQueryItem_Sort.Height=ppFieldA(0).top+25*(lastItem+1+1)
		  
		  return lastItem
		  
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub doSave()
		   
		  curStep.name=efName.text
		  
		  
		  for i as integer = 0 to  curStep.maxItems
		    if ppFieldA(i).Visible then
		      curStep.sField1(i)=ppFieldA(i).SelectedRowText
		      curStep.sFields(i)=ppfieldB(i).SelectedRowText
		      curStep.bInUse(i)=true
		    else
		      curStep.bInUse(i)=false
		      curStep.sField1(i)=""
		      curStep.sFields(i)=""
		    end if
		    
		  next
		  
		  
		  if rb_Limit(0).value then
		    curStep.recLimit=0
		  elseif rb_limit(1).value then
		    curStep.recLimit=val(efLimit.text)
		  end if
		  
		  curStep.UpdatedFromConfigDialog
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub prepLine(theLine as integer)
		   
		  if curStep.prevDataQueryItem<>nil then
		    ppFieldA(theLine).RemoveAllRows
		    
		    
		    for i as integer = 1 to ubound(curStep.prevDataQueryItem.keyFields)
		      ppFielda(theLine).AddRow curStep.prevDataQueryItem.keyFields(i)
		    next
		    
		    for i as integer = 1 to ubound(curStep.prevDataQueryItem.valueFields)
		      ppFielda(theLine).AddRow curStep.prevDataQueryItem.valueFields(i)
		    next
		    
		    
		    'ppFieldb(theLine).AddRow cUseConstant
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowMe(theStep as clDataQueryItem_Sort)
		   
		  var j  as integer
		  
		  curStep=theStep
		  
		  prepLine 0
		  
		  efName.text=curStep.name
		  
		  ppFieldA(0).findItem(curStep.sField1(0))
		  ppFieldB(0).findItem(curStep.sFieldS(0))
		  
		  for i as integer = 1 to curStep.maxItems
		    if curStep.bInUse(i) then
		      j=addone
		      ppFieldA(j).findItem(curStep.sField1(i))
		      ppFieldB(j).findItem(curStep.sFieldS(i))
		    end if
		    
		  next
		  
		  if curStep.recLimit=0 then 
		    rb_Limit(0).value=true
		  else
		    rb_limit(1).value=true
		    efLimit.text=str(curStep.recLimit)
		  end if
		  
		  
		  showmodal
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		curStep As clDataQueryItem_Sort
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected lastItem As integer
	#tag EndProperty


#tag EndWindowCode

#tag Events efLimit
	#tag Event
		Sub TextChange()
		  
		  if len(efLimit.text)>0 then
		    rb_Limit(1).value=true
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rb_Limit
	#tag Event
		Sub ValueChanged(index as Integer)
		  
		  if index=0 then
		    if rb_limit(index).value then
		      efLimit.text=""
		    end if
		  end if
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pb_Remove
	#tag Event
		Sub Pressed(index as Integer)
		  var i  as integer
		  dim y as integer
		  dim last as integer
		  
		  
		  for i=index+1 to lastItem
		    y=ppFieldA(i).top-25
		    ppFieldA(i-1).SelectedRowIndex=ppFieldA(i).SelectedRowIndex
		    ppFieldB(i-1).SelectedRowIndex=ppfieldB(i).SelectedRowIndex
		  next
		  
		  i=lastItem
		  
		  ppFieldA(i).visible=false
		  ppFieldB(i).visible=false
		  pb_Remove(i).Visible=false
		  
		  lastItem=lastItem-1
		  
		  pb_add.top=pb_remove(lastItem).top
		  
		  pb_close.top=pb_add.top+25
		  
		  wndDataQueryItem_Sort.Height=ppFieldA(0).top+25*(lastItem+1+1)
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pb_Add
	#tag Event
		Sub Pressed()
		  
		  var i  as integer
		  i=addOne
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pb_close
	#tag Event
		Sub Pressed()
		  
		  doSave
		  
		  close
		  
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
