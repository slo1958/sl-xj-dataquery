#tag DesktopWindow
Begin DesktopContainer ccAutomatorStep
   AllowAutoDeactivate=   True
   AllowFocus      =   False
   AllowFocusRing  =   False
   AllowTabs       =   True
   Backdrop        =   0
   BackgroundColor =   &cA2A2A200
   Composited      =   False
   Enabled         =   True
   HasBackgroundColor=   False
   Height          =   220
   Index           =   -2147483648
   InitialParent   =   ""
   Left            =   0
   LockBottom      =   False
   LockLeft        =   True
   LockRight       =   False
   LockTop         =   True
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Tooltip         =   ""
   Top             =   0
   Transparent     =   True
   Visible         =   True
   Width           =   600
   Begin DesktopRectangle Rectangle1
      AllowAutoDeactivate=   True
      BorderColor     =   &c000000
      BorderThickness =   1.0
      CornerSize      =   16.0
      Enabled         =   True
      FillColor       =   &c88888800
      Height          =   200
      Index           =   -2147483648
      Left            =   10
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      Tooltip         =   ""
      Top             =   11
      Transparent     =   False
      Visible         =   True
      Width           =   550
      Begin DesktopRectangle Rectangle2
         AllowAutoDeactivate=   True
         BorderColor     =   &c62626200
         BorderThickness =   1.0
         CornerSize      =   16.0
         Enabled         =   True
         FillColor       =   &cA5A5A500
         Height          =   154
         Index           =   -2147483648
         InitialParent   =   "Rectangle1"
         Left            =   12
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         Tooltip         =   ""
         Top             =   55
         Transparent     =   False
         Visible         =   True
         Width           =   546
      End
      Begin DesktopLabel lbl_title
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "Rectangle1"
         Italic          =   False
         Left            =   30
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Untitled"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   22
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   406
      End
      Begin DesktopLabel lbl_id
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "Rectangle1"
         Italic          =   False
         Left            =   448
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Untitled"
         TextAlignment   =   3
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   23
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
   End
   Begin DesktopButton btn_Add
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
      Italic          =   False
      Left            =   565
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   43
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   35
   End
   Begin DesktopButton btn_remove
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
      Index           =   -2147483648
      Italic          =   False
      Left            =   565
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   75
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   35
   End
   Begin DesktopButton btn_mode
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "..."
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   565
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   11
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   34
   End
   Begin DesktopLabel lbl_desc
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   118
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   29
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   True
      Scope           =   0
      Selectable      =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Untitled"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   76
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   513
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  return True
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseUp(x As Integer, y As Integer)
		  
		  if self.Height > cCollapsedHeigth then
		    Collapse
		    
		  else
		    Expand
		    
		  end if
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AddButton(Mode as boolean)
		  self.btn_add.Visible = mode
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Collapse()
		  self.Height = cCollapsedHeigth
		  UpdateUI
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Expand()
		  
		  self.Height = cExpandedHeigth
		  UpdateUI
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveButton(Mode as boolean)
		  
		  self.btn_remove.Visible = mode
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetID(VisibleID as string, TechnicalD as integer)
		  
		  lbl_id.Text = VisibleID
		  InternalID = TechnicalD
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetTitle(TitleText as String)
		  
		  lbl_title.Text = TitleText
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowSelected(mode as Boolean)
		  if mode then
		    Rectangle1.BorderThickness = 3
		    
		  else
		    Rectangle1.BorderThickness = 0
		    
		  end if
		  
		  UpdateUI
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateUI()
		  
		  if self.Window =nil then return 
		  
		  window1(self.Window).UpdateUI
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		InternalID As Integer
	#tag EndProperty


	#tag Constant, Name = cCollapsedHeigth, Type = Double, Dynamic = False, Default = \"100", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cExpandedHeigth, Type = Double, Dynamic = False, Default = \"220", Scope = Public
	#tag EndConstant


#tag EndWindowCode

#tag Events btn_Add
	#tag Event
		Sub Pressed()
		  
		  if self.Window =nil then return 
		  
		  window1(self.Window).SelectAndAddStepAfter(InternalID)
		  
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base As DesktopMenuItem, x As Integer, y As Integer) As Boolean
		  
		  base.AddMenu(New DesktopMenuItem("Group/Split"))
		  
		  base.AddMenu(New DesktopMenuItem("Filter"))
		  base.AddMenu(New DesktopMenuItem("Sort"))
		  base.AddMenu(New DesktopMenuItem( "Calc"))
		  base.AddMenu(New DesktopMenuItem("Map"))
		  base.AddMenu(New DesktopMenuItem( "Pivot"))
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuItemSelected(selectedItem As DesktopMenuItem) As Boolean
		  
		  if self.Window =nil then return false
		  
		  window1(self.Window).AddStepAfter(InternalID, selectedItem.Text)
		  
		  return True
		  
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events btn_mode
	#tag Event
		Sub Pressed()
		  
		  if self.Window =nil then return 
		  
		  window1(self.Window).EditStepWithID(InternalID)
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Name"
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
		Name="Index"
		Visible=true
		Group="ID"
		InitialValue="-2147483648"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="InitialParent"
		Visible=false
		Group="Position"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Position"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Position"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIndex"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabPanelIndex"
		Visible=false
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabStop"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowAutoDeactivate"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Tooltip"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowFocusRing"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
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
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="ColorGroup"
		EditorType="ColorGroup"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		InitialValue=""
		Type="Picture"
		EditorType=""
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
		Name="AllowFocus"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowTabs"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Transparent"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composited"
		Visible=true
		Group="Window Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="InternalID"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
