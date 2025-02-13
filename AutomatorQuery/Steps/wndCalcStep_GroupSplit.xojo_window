#tag DesktopWindow
Begin DesktopWindow wndCalcStep_GroupSplit
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
   Height          =   219
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
   Width           =   447
   Begin Label st_Name
      AutoDeactivate  =   True
      BalloonHelp     =   ""
      Bold            =   False
      ControlOrder    =   "0"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
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
      MultiLine       =   False
      Selectable      =   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   "True"
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
      BalloonHelp     =   ""
      Bold            =   False
      Border          =   True
      ControlOrder    =   "1"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
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
      MultiLine       =   False
      Password        =   False
      ReadOnly        =   False
      ScrollBar       =   "True"
      ScrollBarHorizontal=   False
      ScrollBarVertical=   True
      Styled          =   False
      TabIndex        =   1
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
      BalloonHelp     =   ""
      Bold            =   False
      ControlOrder    =   "2"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
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
      MultiLine       =   False
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   "True"
      Text            =   "Split by"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   40
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin DesktopPopupMenu ppFieldA
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   False
      ControlOrder    =   "3"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   0
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
      SelectedRowIndex=   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "12.0"
      Tooltip         =   ""
      Top             =   40
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin DesktopButton pb_Remove
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   True
      Cancel          =   False
      Caption         =   "-"
      ControlOrder    =   "4"
      Default         =   False
      DisabledBalloonHelp=   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   0
      InitialParent   =   ""
      Italic          =   False
      Left            =   257
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "14.0"
      Tooltip         =   ""
      Top             =   39
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin DesktopPopupMenu PopupMenu1
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   False
      ControlOrder    =   "5"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
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
      SelectedRowIndex=   0
      TabIndex        =   5
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
   Begin DesktopPopupMenu ppFieldA
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   False
      ControlOrder    =   "6"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
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
      SelectedRowIndex=   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "12.0"
      Tooltip         =   ""
      Top             =   64
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin DesktopButton pb_Remove
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   True
      Cancel          =   False
      Caption         =   "-"
      ControlOrder    =   "7"
      Default         =   False
      DisabledBalloonHelp=   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   1
      InitialParent   =   ""
      Italic          =   False
      Left            =   257
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "14.0"
      Tooltip         =   ""
      Top             =   63
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin DesktopPopupMenu ppFieldA
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   False
      ControlOrder    =   "8"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
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
      SelectedRowIndex=   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "12.0"
      Tooltip         =   ""
      Top             =   88
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin DesktopButton pb_Remove
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   True
      Cancel          =   False
      Caption         =   "-"
      ControlOrder    =   "9"
      Default         =   False
      DisabledBalloonHelp=   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   2
      InitialParent   =   ""
      Italic          =   False
      Left            =   257
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "14.0"
      Tooltip         =   ""
      Top             =   87
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin DesktopPopupMenu ppFieldA
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   False
      ControlOrder    =   "10"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
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
      SelectedRowIndex=   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "12.0"
      Tooltip         =   ""
      Top             =   113
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin DesktopButton pb_Remove
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   True
      Cancel          =   False
      Caption         =   "-"
      ControlOrder    =   "11"
      Default         =   False
      DisabledBalloonHelp=   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   3
      InitialParent   =   ""
      Italic          =   False
      Left            =   257
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "14.0"
      Tooltip         =   ""
      Top             =   112
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin DesktopPopupMenu ppFieldA
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   False
      ControlOrder    =   "12"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
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
      SelectedRowIndex=   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "12.0"
      Tooltip         =   ""
      Top             =   138
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin DesktopButton pb_Remove
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   True
      Cancel          =   False
      Caption         =   "-"
      ControlOrder    =   "13"
      Default         =   False
      DisabledBalloonHelp=   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   4
      InitialParent   =   ""
      Italic          =   False
      Left            =   257
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "14.0"
      Tooltip         =   ""
      Top             =   137
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin DesktopPopupMenu ppFieldA
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   False
      ControlOrder    =   "14"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
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
      SelectedRowIndex=   0
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "12.0"
      Tooltip         =   ""
      Top             =   163
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin DesktopButton pb_Remove
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   True
      Cancel          =   False
      Caption         =   "-"
      ControlOrder    =   "15"
      Default         =   False
      DisabledBalloonHelp=   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   5
      InitialParent   =   ""
      Italic          =   False
      Left            =   257
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "14.0"
      Tooltip         =   ""
      Top             =   162
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin DesktopPopupMenu ppFieldA
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   False
      ControlOrder    =   "16"
      DataField       =   ""
      DataSource      =   ""
      DisabledBalloonHelp=   ""
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
      SelectedRowIndex=   0
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "12.0"
      Tooltip         =   ""
      Top             =   189
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   140
   End
   Begin DesktopButton pb_Remove
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   True
      Cancel          =   False
      Caption         =   "-"
      ControlOrder    =   "17"
      Default         =   False
      DisabledBalloonHelp=   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      HelpTag         =   ""
      Index           =   6
      InitialParent   =   ""
      Italic          =   False
      Left            =   257
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "14.0"
      Tooltip         =   ""
      Top             =   188
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin DesktopRadioButton rb_sumNumber
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   False
      Caption         =   "Sum value fields"
      ControlOrder    =   "18"
      DisabledBalloonHelp=   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   19
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
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "12.0"
      Tooltip         =   ""
      Top             =   189
      Transparent     =   False
      Underline       =   False
      Value           =   True
      Visible         =   True
      Width           =   94
   End
   Begin DesktopButton pb_Add
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   True
      Cancel          =   False
      Caption         =   "+"
      ControlOrder    =   "19"
      Default         =   False
      DisabledBalloonHelp=   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      HelpTag         =   ""
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
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "14.0"
      Tooltip         =   ""
      Top             =   162
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   20
   End
   Begin DesktopButton pb_close
      AllowAutoDeactivate=   True
      AutoDeactivate  =   "True"
      BalloonHelp     =   ""
      Bold            =   False
      Cancel          =   False
      Caption         =   "Close"
      ControlOrder    =   "20"
      Default         =   True
      DisabledBalloonHelp=   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   22
      HelpTag         =   ""
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
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   "12.0"
      Tooltip         =   ""
      Top             =   162
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   69
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
		    pb_Remove(i).Visible=false
		  next
		  
		  pb_add.top=pb_remove(0).top
		  
		  pb_Remove(0).Enabled=false
		  
		  rb_sumNumber.top=pb_add.top+25
		  pb_close.top=pb_add.top+25
		  
		  wndCalcStep_GroupSplit.Height=pb_close.top+25
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function addOne() As integer
		  if lastItem<curStep.maxItems  then lastItem=lastItem+1
		  
		  ppFielda(lastItem).Visible=true
		  pb_remove(lastItem).visible=true 
		  
		  prepLine lastItem
		  
		  pb_add.top=pb_remove(lastItem).top
		  
		  rb_sumNumber.top=pb_add.top+25
		  pb_close.top=pb_add.top+25
		  
		  wndCalcStep_GroupSplit.Height=ppFieldA(0).top+25*(lastItem+1+1)
		  
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
		    
		    
		    for i=1 to ubound(curStep.prevCalcStep.keyFields)
		      ppFielda(theLine).AddRow curStep.prevCalcStep.keyFields(i)
		    next
		    
		    'for i=1 to ubound(curStep.prevCalcStep.valueFields)
		    'ppFielda(theLine).AddRow curStep.prevCalcStep.valueFields(i)
		    'ppFieldb(theLine).AddRow curStep.prevCalcStep.valueFields(i)
		    'next
		    '
		    
		    'ppFieldb(theLine).AddRow cUseConstant
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowMe(theStep as clCalcStep_GroupSplit)
		  dim i as integer
		  dim j as integer
		  
		  curStep=theStep
		  
		  prepLine 0
		  
		  efName.text=curStep.getTitle
		  
		  ppFieldA(0).findItem(curStep.sField1(0))
		  
		  
		  for i=1 to curStep.maxItems
		    if curStep.bInUse(i) then
		      j=addone
		      ppFieldA(j).findItem(curStep.sField1(i))
		    end if
		    
		  next
		  
		  
		  
		  showmodal
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		curStep As clCalcStep_GroupSplit
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected lastItem As integer
	#tag EndProperty


#tag EndWindowCode

#tag Events pb_Remove
	#tag Event
		Sub Pressed(index as Integer)
		  dim i as integer
		  dim y as integer
		  dim last as integer
		  
		  
		  for i=index+1 to lastItem
		    y=ppFieldA(i).top-25
		    ppFieldA(i-1).SelectedRowIndex=ppFieldA(i).SelectedRowIndex
		  next
		  
		  i=lastItem
		  
		  ppFieldA(i).visible=false
		  
		  pb_Remove(i).Visible=false
		  
		  lastItem=lastItem-1
		  
		  pb_add.top=pb_remove(lastItem).top
		  
		  rb_sumNumber.top=pb_add.top+25
		  pb_close.top=pb_add.top+25
		  
		  wndCalcStep_GroupSplit.Height=ppFieldA(0).top+25*(lastItem+1+1)
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rb_sumNumber
	#tag Event
		Sub ValueChanged()
		  rb_sumNumber.value=true
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
