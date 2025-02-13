#tag DesktopWindow
Begin DesktopWindow wndCalcStep_Filter
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
   Height          =   227
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   True
   Title           =   "Definition of a filter"
   Type            =   0
   Visible         =   True
   Width           =   772
   Begin DesktopPopupMenu PopupMenu1
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   -465
      ListIndex       =   "0"
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "12.0"
      Tooltip         =   ""
      Top             =   6
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin Label st_Name
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
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
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   6
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin TextField efName
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   110
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Mask            =   ""
      Multiline       =   False
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   6
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   329
   End
   Begin Label StaticText1
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
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
      Text            =   "Filter for"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   51
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin DesktopPopupMenu ppFieldA
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   0
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   110
      ListIndex       =   "0"
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
      TextFont        =   "System"
      TextSize        =   "12.0"
      Tooltip         =   ""
      Top             =   51
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin DesktopPopupMenu ppOp
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   0
      InitialParent   =   ""
      InitialValue    =   "=\r\n<\r\n<=\r\n>\r\n>=\r\n!=\r\n"
      Italic          =   False
      Left            =   285
      ListIndex       =   "0"
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
      TextFont        =   "System"
      TextSize        =   "12.0"
      Tooltip         =   ""
      Top             =   51
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   60
   End
   Begin DesktopPopupMenu ppFieldB
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   0
      InitialParent   =   ""
      InitialValue    =   "customer\r\nprod_fam_2\r\npgvss\r\nyear\r\n(constant)\r\n(empty)"
      Italic          =   False
      Left            =   354
      ListIndex       =   "0"
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "12.0"
      Tooltip         =   ""
      Top             =   51
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin TextField efConstant
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   0
      InitialParent   =   ""
      Italic          =   False
      Left            =   506
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Mask            =   ""
      Multiline       =   False
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   False
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   51
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   115
   End
   Begin DesktopButton pb_Remove
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   True
      Cancel          =   False
      Caption         =   "-"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   0
      InitialParent   =   ""
      Italic          =   False
      Left            =   627
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
      TextFont        =   "System"
      TextSize        =   "14.0"
      Tooltip         =   ""
      Top             =   50
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin DesktopPopupMenu ppFieldA
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   1
      InitialParent   =   ""
      InitialValue    =   "customer\r\nprod_fam_2\r\npgvss\r\nyear\r\n"
      Italic          =   False
      Left            =   110
      ListIndex       =   "0"
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
      TextFont        =   "System"
      TextSize        =   "12.0"
      Tooltip         =   ""
      Top             =   75
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin DesktopPopupMenu ppOp
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   1
      InitialParent   =   ""
      InitialValue    =   "=\r\n<\r\n<=\r\n>\r\n>=\r\n!=\r\n"
      Italic          =   False
      Left            =   285
      ListIndex       =   "0"
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "12.0"
      Tooltip         =   ""
      Top             =   75
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   60
   End
   Begin DesktopPopupMenu ppFieldB
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   1
      InitialParent   =   ""
      InitialValue    =   "customer\r\nprod_fam_2\r\npgvss\r\nyear\r\n(constant)\r\n(empty)"
      Italic          =   False
      Left            =   354
      ListIndex       =   "0"
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
      TextFont        =   "System"
      TextSize        =   "12.0"
      Tooltip         =   ""
      Top             =   75
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin TextField efConstant
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   1
      InitialParent   =   ""
      Italic          =   False
      Left            =   506
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Mask            =   ""
      Multiline       =   False
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   False
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   75
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   115
   End
   Begin DesktopButton pb_Remove
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   True
      Cancel          =   False
      Caption         =   "-"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   1
      InitialParent   =   ""
      Italic          =   False
      Left            =   627
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "14.0"
      Tooltip         =   ""
      Top             =   74
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin DesktopPopupMenu ppFieldA
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   2
      InitialParent   =   ""
      InitialValue    =   "customer\r\nprod_fam_2\r\npgvss\r\nyear\r\n"
      Italic          =   False
      Left            =   110
      ListIndex       =   "0"
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "12.0"
      Tooltip         =   ""
      Top             =   99
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin DesktopPopupMenu ppOp
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   2
      InitialParent   =   ""
      InitialValue    =   "=\r\n<\r\n<=\r\n>\r\n>=\r\n!=\r\n"
      Italic          =   False
      Left            =   285
      ListIndex       =   "0"
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
      TextFont        =   "System"
      TextSize        =   "12.0"
      Tooltip         =   ""
      Top             =   99
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   60
   End
   Begin DesktopPopupMenu ppFieldB
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   2
      InitialParent   =   ""
      InitialValue    =   "customer\r\nprod_fam_2\r\npgvss\r\nyear\r\n(constant)\r\n(empty)"
      Italic          =   False
      Left            =   354
      ListIndex       =   "0"
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "12.0"
      Tooltip         =   ""
      Top             =   99
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin TextField efConstant
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   2
      InitialParent   =   ""
      Italic          =   False
      Left            =   506
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Mask            =   ""
      Multiline       =   False
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   False
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   99
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   115
   End
   Begin DesktopButton pb_Remove
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   True
      Cancel          =   False
      Caption         =   "-"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   2
      InitialParent   =   ""
      Italic          =   False
      Left            =   627
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
      TextFont        =   "System"
      TextSize        =   "14.0"
      Tooltip         =   ""
      Top             =   98
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin DesktopPopupMenu ppFieldA
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   3
      InitialParent   =   ""
      InitialValue    =   "customer\r\nprod_fam_2\r\npgvss\r\nyear\r\n"
      Italic          =   False
      Left            =   110
      ListIndex       =   "0"
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "12.0"
      Tooltip         =   ""
      Top             =   124
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin DesktopPopupMenu ppOp
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   3
      InitialParent   =   ""
      InitialValue    =   "=\r\n<\r\n<=\r\n>\r\n>=\r\n!=\r\n"
      Italic          =   False
      Left            =   285
      ListIndex       =   "0"
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "12.0"
      Tooltip         =   ""
      Top             =   124
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   60
   End
   Begin DesktopPopupMenu ppFieldB
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   3
      InitialParent   =   ""
      InitialValue    =   "customer\r\nprod_fam_2\r\npgvss\r\nyear\r\n(constant)\r\n(empty)"
      Italic          =   False
      Left            =   354
      ListIndex       =   "0"
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
      TextFont        =   "System"
      TextSize        =   "12.0"
      Tooltip         =   ""
      Top             =   124
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin TextField efConstant
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   3
      InitialParent   =   ""
      Italic          =   False
      Left            =   506
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Mask            =   ""
      Multiline       =   False
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   False
      TabIndex        =   22
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   124
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   115
   End
   Begin DesktopButton pb_Remove
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   True
      Cancel          =   False
      Caption         =   "-"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   3
      InitialParent   =   ""
      Italic          =   False
      Left            =   627
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   23
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "14.0"
      Tooltip         =   ""
      Top             =   123
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin DesktopPopupMenu ppFieldA
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   4
      InitialParent   =   ""
      InitialValue    =   "customer\r\nprod_fam_2\r\npgvss\r\nyear\r\n"
      Italic          =   False
      Left            =   110
      ListIndex       =   "0"
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
      TextFont        =   "System"
      TextSize        =   "12.0"
      Tooltip         =   ""
      Top             =   149
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin DesktopPopupMenu ppOp
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   4
      InitialParent   =   ""
      InitialValue    =   "=\r\n<\r\n<=\r\n>\r\n>=\r\n!=\r\n"
      Italic          =   False
      Left            =   285
      ListIndex       =   "0"
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
      TextFont        =   "System"
      TextSize        =   "12.0"
      Tooltip         =   ""
      Top             =   149
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   60
   End
   Begin DesktopPopupMenu ppFieldB
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   4
      InitialParent   =   ""
      InitialValue    =   "customer\r\nprod_fam_2\r\npgvss\r\nyear\r\n(constant)\r\n(empty)"
      Italic          =   False
      Left            =   354
      ListIndex       =   "0"
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
      TextFont        =   "System"
      TextSize        =   "12.0"
      Tooltip         =   ""
      Top             =   149
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin TextField efConstant
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   4
      InitialParent   =   ""
      Italic          =   False
      Left            =   506
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Mask            =   ""
      Multiline       =   False
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   False
      TabIndex        =   27
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   149
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   115
   End
   Begin DesktopButton pb_Remove
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   True
      Cancel          =   False
      Caption         =   "-"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   4
      InitialParent   =   ""
      Italic          =   False
      Left            =   627
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   28
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "14.0"
      Tooltip         =   ""
      Top             =   148
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin DesktopPopupMenu ppFieldA
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   5
      InitialParent   =   ""
      InitialValue    =   "customer\r\nprod_fam_2\r\npgvss\r\nyear\r\n"
      Italic          =   False
      Left            =   110
      ListIndex       =   "0"
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   29
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "12.0"
      Tooltip         =   ""
      Top             =   174
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin DesktopPopupMenu ppOp
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   5
      InitialParent   =   ""
      InitialValue    =   "=\r\n<\r\n<=\r\n>\r\n>=\r\n!=\r\n"
      Italic          =   False
      Left            =   285
      ListIndex       =   "0"
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   30
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "12.0"
      Tooltip         =   ""
      Top             =   174
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   60
   End
   Begin DesktopPopupMenu ppFieldB
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   5
      InitialParent   =   ""
      InitialValue    =   "customer\r\nprod_fam_2\r\npgvss\r\nyear\r\n(constant)\r\n(empty)"
      Italic          =   False
      Left            =   354
      ListIndex       =   "0"
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   31
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "12.0"
      Tooltip         =   ""
      Top             =   174
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin TextField efConstant
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   5
      InitialParent   =   ""
      Italic          =   False
      Left            =   506
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Mask            =   ""
      Multiline       =   False
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   False
      TabIndex        =   32
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   174
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   115
   End
   Begin DesktopButton pb_Remove
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   True
      Cancel          =   False
      Caption         =   "-"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   5
      InitialParent   =   ""
      Italic          =   False
      Left            =   627
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   33
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "14.0"
      Tooltip         =   ""
      Top             =   173
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin DesktopPopupMenu ppFieldA
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   6
      InitialParent   =   ""
      InitialValue    =   "customer\r\nprod_fam_2\r\npgvss\r\nyear\r\n"
      Italic          =   False
      Left            =   110
      ListIndex       =   "0"
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   34
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "12.0"
      Tooltip         =   ""
      Top             =   200
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin DesktopPopupMenu ppOp
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   6
      InitialParent   =   ""
      InitialValue    =   "=\r\n<\r\n<=\r\n>\r\n>=\r\n!=\r\n"
      Italic          =   False
      Left            =   285
      ListIndex       =   "0"
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   35
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "12.0"
      Tooltip         =   ""
      Top             =   200
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   60
   End
   Begin DesktopPopupMenu ppFieldB
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   6
      InitialParent   =   ""
      InitialValue    =   "customer\r\nprod_fam_2\r\npgvss\r\nyear\r\n(constant)\r\n(empty)"
      Italic          =   False
      Left            =   354
      ListIndex       =   "0"
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      SelectedRowIndex=   0
      TabIndex        =   36
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "12.0"
      Tooltip         =   ""
      Top             =   200
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin TextField efConstant
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   False
      Format          =   ""
      Height          =   22
      HelpTag         =   ""
      Index           =   6
      InitialParent   =   ""
      Italic          =   False
      Left            =   506
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Mask            =   ""
      Multiline       =   False
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   False
      TabIndex        =   37
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   200
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   115
   End
   Begin DesktopButton pb_Remove
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   True
      Cancel          =   False
      Caption         =   "-"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   6
      InitialParent   =   ""
      Italic          =   False
      Left            =   627
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   38
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "14.0"
      Tooltip         =   ""
      Top             =   199
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin DesktopButton pb_Add
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   True
      Cancel          =   False
      Caption         =   "+"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   665
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   39
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "14.0"
      Tooltip         =   ""
      Top             =   173
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin DesktopButton pb_close
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      Bold            =   False
      Cancel          =   False
      Caption         =   "Close"
      Default         =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   697
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   40
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "12.0"
      Tooltip         =   ""
      Top             =   173
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   69
   End
   Begin Label st_help
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   26
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   115
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   41
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Label:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   26
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   651
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Opening()
		  dim i as integer
		  
		  lastItem=0
		  for i=1 to 6
		    ppFieldA(i).visible=false
		    ppFieldb(i).Visible=false
		    ppop(i).Visible=false
		    efConstant(i).Visible=false
		    pb_Remove(i).Visible=false
		  next
		  
		  pb_add.top=pb_remove(0).top
		  pb_close.top=pb_Remove(0).top
		  
		  wndCalcStep_Filter.Height=ppFieldA(0).top+25
		  
		  pb_Remove(0).Enabled=false
		  st_help.Caption=""
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function addOne() As integer
		  if lastItem<curStep.maxItems  then lastItem=lastItem+1
		  
		  ppFielda(lastItem).Visible=true
		  ppFieldb(lastitem).Visible=true
		  ppOp(lastItem).Visible=true
		  efConstant(lastitem).visible=true
		  pb_Remove(lastitem).visible=true
		  
		  prepLine lastItem
		  
		  
		  pb_add.top=pb_remove(lastItem).top
		  pb_close.top=pb_Remove(lastItem).top
		  
		  
		  wndCalcStep_Filter.Height=ppFieldA(0).top+25*(lastItem+1)
		  
		  return lastItem
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub doSave()
		  dim i as integer
		  
		  
		  curStep.name=efName.text
		  
		  
		  for i=0 to  curStep.maxItems
		    if ppFieldA(i).Visible then
		      curStep.sField1(i)=ppFieldA(i).SelectedRowText
		      curStep.sField2(i)=ppFieldB(i).SelectedRowText
		      curStep.sOper(i)=ppOp(i).SelectedRowText
		      curStep.sConst(i)=efConstant(i).Text
		      curStep.bInUse(i)=true
		    else
		      curStep.bInUse(i)=false
		    end if
		    
		  next
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub prepLine(theLine as integer)
		  dim i as integer
		  if curStep.prevCalcStep<>nil then
		    ppFieldA(theLine).RemoveAllRows
		    ppFieldB(theLine).RemoveAllRows
		    
		    ppFieldb(theLine).AddRow cUseConstant
		    
		    for i=1 to ubound(curStep.prevCalcStep.keyFields)
		      ppFielda(theLine).AddRow curStep.prevCalcStep.keyFields(i)
		      ppFieldb(theLine).AddRow curStep.prevCalcStep.keyFields(i)
		    next
		    
		    for i=1 to ubound(curStep.prevCalcStep.valueFields)
		      ppFielda(theLine).AddRow curStep.prevCalcStep.valueFields(i)
		      ppFieldb(theLine).AddRow curStep.prevCalcStep.valueFields(i)
		    next
		    
		    ppFieldA(theLine).SelectedRowIndex=0
		    ppFieldB(theLine).SelectedRowIndex=0
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowMe(theStep as clCalcStep_filter)
		  dim i as integer
		  dim j as integer
		  
		  curStep=theStep
		  
		  prepLine 0
		  efName.text=curStep.name
		  
		  ppFieldA(0).findItem(curStep.sField1(0))
		  ppFieldB(0).findItem(curStep.sField2(0))
		  ppOp(0).findItem(curStep.sOper(0))
		  efConstant(0).Text=curStep.sConst(0)
		  
		  for i=1 to curStep.maxItems
		    if curStep.bInUse(i) then
		      j=addone
		      ppFieldA(j).findItem(curStep.sField1(i))
		      ppFieldB(j).findItem(curStep.sField2(i))
		      ppOp(j).findItem(curStep.sOper(i))
		      efConstant(j).Text=curStep.sConst(i)
		    end if
		    
		  next
		  
		  
		  
		  showmodal
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function validInput() As boolean
		  dim i as integer
		  dim k as integer
		  dim bErr as boolean
		  dim kt as integer
		  
		  bErr=false
		  for i=0 to 6
		    efConstant(i).BackColor=rgb(255,255,255)
		    
		    if ppFieldA(i).Visible then
		      if curStep.prevCalcStep=nil then
		        kt=-1
		      else
		        kt=curStep.prevCalcStep.getFieldType(ppFieldA(i).SelectedRowText)
		      end if
		      
		      if ppfieldB(i).SelectedRowText=cUseConstant then 
		        ' check type of constant
		        if validValForType(efConstant(i).text,kt) then
		        else
		          bErr=true
		          efConstant(i).BackColor=rgb(255,0,0)
		        end if
		        
		      else
		        ' check type of other field
		        
		      end if
		      
		    end if
		    
		  next
		  
		  
		  return not bErr
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		curStep As clCalcStep_filter
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected lastItem As integer
	#tag EndProperty


#tag EndWindowCode

#tag Events ppFieldA
	#tag Event
		Sub SelectionChanged(index as Integer, item As DesktopMenuItem)
		  'dim k as integer
		  'if index=0 then
		  'if curStep.prevCalcStep=nil then 
		  'k=-1
		  'else
		  'k=curStep.prevCalcStep.getType(ppFieldA(index).text)
		  'end if
		  '
		  'stType(0).caption=""
		  'if k=10 then stType(0).caption="Aa1"
		  'if k=20 then stType(0).caption="123"
		  'if k=30 then stType(0).caption="1.3"
		  'end if
		  '
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ppFieldB
	#tag Event
		Sub SelectionChanged(index as Integer, item As DesktopMenuItem)
		  
		  efConstant(index).Enabled=ppFieldB(index).SelectedRowText="(constant)"
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events efConstant
	#tag Event
		Sub MouseEnter(index as Integer)
		  dim kt as integer
		  dim sb as string
		  dim sc as string
		  if me.BackColor=rgb(255,0,0) then
		    sb=ppFieldA(index).SelectedRowText
		    kt=curStep.prevCalcStep.getFieldType(sb)
		    
		    
		    if kt=10 then
		      sc="This is a text key. Its value must be surrounded with ' (single quote). "
		      sc=sc+"It may not contain single or double quote."
		      
		    end if
		    
		    if kt=20 then
		      sc="This is a number key.  Its value must be a valid number."
		    end if
		    
		    if kt=30 then
		      sc="This is a number value.  Its value must be a valid number (use the dot for fractionnal numbers)"
		    end if
		    
		    st_help.caption=sb+":"+sc
		    
		  else
		    st_help.Caption=""
		    
		  end if
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pb_Remove
	#tag Event
		Sub Pressed(index as Integer)
		  dim i as integer
		  dim y as integer
		  dim last as integer
		  
		  
		  for i=index+1 to lastItem
		    y=ppFieldA(i).top-25
		    ppFieldA(i-1).SelectedRowIndex=ppFieldA(i).SelectedRowIndex
		    ppFieldB(i-1).SelectedRowIndex=ppFieldb(i).SelectedRowIndex
		    ppOp(i-1).SelectedRowIndex=ppOp(i).SelectedRowIndex
		    efConstant(i-1).text=efConstant(i).text
		  next
		  
		  i=lastItem
		  
		  ppFieldA(i).visible=false
		  ppFieldb(i).Visible=false
		  ppop(i).Visible=false
		  efConstant(i).Visible=false
		  pb_Remove(i).Visible=false
		  
		  lastItem=lastItem-1
		  
		  pb_add.top=pb_remove(lastItem).top
		  pb_close.top=pb_Remove(lastItem).top
		  
		  wndCalcStep_Filter.Height=ppFieldA(0).top+25*(lastItem+1)
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pb_Add
	#tag Event
		Sub Pressed()
		  
		  dim i as integer
		  i=addOne
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pb_close
	#tag Event
		Sub Pressed()
		  
		  if validInput then
		    doSave
		    
		    close
		  end if
		  
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
