#tag DesktopWindow
Begin DesktopWindow wnd_main Implements AutomatorVisualInterface
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF
   Composite       =   False
   DefaultLocation =   2
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   Height          =   400
   ImplicitInstance=   False
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   459323391
   MenuBarVisible  =   False
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   True
   Title           =   "Untitled"
   Type            =   0
   Visible         =   False
   Width           =   934
   Begin DesktopListBox lb_Analaysis
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   True
      AllowResizableColumns=   False
      AllowRowDragging=   False
      AllowRowReordering=   False
      Bold            =   False
      ColumnCount     =   1
      ColumnWidths    =   ""
      DefaultRowHeight=   -1
      DropIndicatorVisible=   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   12.0
      FontUnit        =   0
      GridLineStyle   =   0
      HasBorder       =   True
      HasHeader       =   False
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      HeadingIndex    =   -1
      Height          =   310
      Index           =   -2147483648
      InitialValue    =   "File	Analysis\r\n"
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      RequiresSelection=   False
      RowSelectionType=   0
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   33
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   275
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin Label StaticText1
      AllowAutoDeactivate=   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "Tahoma"
      FontSize        =   12.0
      FontUnit        =   0
      Height          =   32
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
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Available analysis"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   274
   End
   Begin TextField tf_GroupTtitle
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF00
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "Tahoma"
      FontSize        =   12.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   False
      Height          =   20
      Hint            =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   315
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   5
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   599
   End
   Begin Label sttLocalFilename
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   12.0
      FontUnit        =   0
      Height          =   32
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Label:"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   355
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   294
   End
   Begin ccAutomatorFlow ccAutomatorFlow1
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   False
      AllowTabs       =   True
      Backdrop        =   0
      BackgroundColor =   &cFFFFFF
      Composited      =   False
      Enabled         =   True
      HasBackgroundColor=   False
      Height          =   310
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   315
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   33
      Transparent     =   True
      Visible         =   True
      Width           =   600
   End
   Begin DesktopButton pb_run
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Run"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   855
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   355
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   59
   End
   Begin DesktopButton Button2
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Save"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   315
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   360
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
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AddStepAfter(Identifier as integer, NewStepType as string)
		  // Part of the AutomatorVisualInterface interface.
		  
		  
		  var s as  clAutomatorItem = AutomatorFlow.doInsertAfter(NewStepType, Identifier)
		  
		  RefreshStepIDs
		  
		  clDataQueryFlow(self.AutomatorFlow).UpdateDataFlow
		  
		  UpdateUI
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub BuildListOfAnalysis()
		  
		  var d as Dictionary = CurrentProject.GetListOfFlows
		  
		  lb_Analaysis.RemoveAllRows
		  
		  for each k as string in d.keys
		    lb_Analaysis.AddRow(d.value(k).StringValue)
		    
		    lb_Analaysis.RowTagAt(lb_Analaysis.LastAddedRowIndex) = k
		    
		  next
		  
		  return
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ExecuteAction(Identifier as integer, ActionCode as string)
		  // Part of the AutomatorVisualInterface interface.
		  
		  clDataQueryFlow(self.AutomatorFlow).UpdateDataFlow
		  
		  var s as clAutomatorItem = self.AutomatorFlow.FindItemWithId(Identifier)
		  
		  
		  if s = nil then return 
		  
		  select case ActionCode 
		  case ""
		    s.Open
		    
		  case cEdit
		    s.Open
		    
		  case cRunTillHere
		    var tmpSql as string
		    var tmpSource as string
		    
		    tmpSql = clDataQueryFlow(self.AutomatorFlow).getSqlStatement
		    tmpSource = clDataQueryFlow(self.AutomatorFlow).FlowDataSource
		    
		    wnd_queryViewer.ShowResults(self.CurrentProject.Connection, tmpSql, tmpSource)
		    
		    
		  case else
		    
		  end select
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ExecuteRemove(Identifier as integer, ActionCode as string)
		  var ItemToRemove as integer = Identifier
		  
		  var s as clAutomatorItem = self.AutomatorFlow.FindItemWithId(Identifier)
		  
		  if s.VisualSupport <> nil then
		    s.VisualSupport.Close
		    s.VisualSupport = nil
		    
		  end if
		  
		  self.AutomatorFlow.doRemove(ItemToRemove)
		  
		  clDataQueryFlow(self.AutomatorFlow).UpdateDataFlow
		  
		  UpdateUI
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetListOfOptionsForActions(CurrentStepType as string) As string()
		  var temp() as string
		  
		  
		  if CurrentStepType <> "Start" then Temp.Add(cEdit)
		  Temp.Add(cRunTillHere)
		  
		  return temp
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetListOfOptionsForAdd(CurrentStepType as string) As string()
		  
		  return clDataQueryFlow.GetListOfSteps
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetListOfOptionsForRemove(CurrentStepType as string) As string()
		  
		  return nil
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Initialize()
		  
		  BuildListOfAnalysis
		  
		  self.AutomatorFlow =new clDataQueryFlow(self.CurrentProject)
		  
		  self.ccAutomatorFlow1.SetFlow self.AutomatorFlow
		  
		  var  d as new date
		  
		  tf_GroupTtitle.Text =  "Analysis "+d.ShortDate
		  tmpCurrentFile=""
		  
		  UpdateUI
		  
		  dirtyFlag=false
		  sttLocalFilename.caption=tmpCurrentFile
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RefreshStepIDs()
		  var i as integer
		  
		  for each c as clAutomatorItem in self.AutomatorFlow.Items
		    c.SetID(i)
		    
		    i = i + 1
		    
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RenameStep(Identifier as integer, NewName as string)
		  // Part of the AutomatorVisualInterface interface.
		  
		  
		  var s as clAutomatorItem = self.AutomatorFlow.FindItemWithId(Identifier)
		  
		  if s = nil then return 
		  
		  if s.ID = Identifier then s.SetTitle(newName)
		  
		  UpdateUI
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetProject(p as clDataQueryProject)
		  self.CurrentProject = p
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateUI()
		  
		  ccAutomatorFlow1.UpdateUI
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected AutomatorFlow As clAutomatorFlow
	#tag EndProperty

	#tag Property, Flags = &h0
		CurrentProject As clDataQueryProject
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected dirtyFlag As boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected tmpCurrentFile As string
	#tag EndProperty


	#tag Constant, Name = cEdit, Type = String, Dynamic = False, Default = \"Edit", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cRunTillHere, Type = String, Dynamic = False, Default = \"Run all", Scope = Public
	#tag EndConstant


#tag EndWindowCode

#tag Events lb_Analaysis
	#tag Event
		Sub DoublePressed()
		  
		  var FileToOpen as string 
		  
		  var i as integer 
		  
		  i = lb_Analaysis.SelectedRowIndex
		  
		  if i<0 Then Return
		  
		  FileToOpen=lb_Analaysis.RowTagAt(i)
		  // 
		  // self.AutomatorFlow.LoadFromTextFile(sFileToOpen)
		  // 
		  // self.AutomatorFlow = new clDataQueryFlow(
		  // tf_GroupTtitle.Text = self.AutomatorFlow.GroupName
		  
		  var loadedJSON as JSONItem = CurrentProject.LoadFlow(FileToOpen)
		   
		  var loadedFlow as new clDataQueryFlow(CurrentProject, loadedJSON)
		  
		  self.AutomatorFlow = loadedFlow
		  self.ccAutomatorFlow1.SetFlow loadedFlow
		  
		  self.RefreshStepIDs
		  
		  clDataQueryFlow(self.AutomatorFlow).UpdateDataFlow
		  
		  title  = loadedFlow.GroupName
		  tf_GroupTtitle.text = loadedFlow.GroupName
		  
		  UpdateUI
		  
		  return 
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tf_GroupTtitle
	#tag Event
		Sub TextChange()
		  title=tf_GroupTtitle.text
		  self.AutomatorFlow.GroupName = tf_GroupTtitle.text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events pb_run
	#tag Event
		Sub Pressed()
		  
		  var tmpSql as string
		  var tmpSource as string
		  
		  tmpSql = clDataQueryFlow(self.AutomatorFlow).getSqlStatement
		  tmpSource = clDataQueryFlow(self.AutomatorFlow).FlowDataSource
		  
		  wnd_queryViewer.ShowResults(self.CurrentProject.Connection, tmpSql, tmpSource)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button2
	#tag Event
		Sub Pressed()
		  
		  var projectFile as FolderItem = CurrentProject.ProjectFIle
		  
		  var projectFlow as clDataQueryFlow = clDataQueryFlow(self.AutomatorFlow)
		  
		  if projectFile = nil then 
		    MessageBox("Cannot save flow to undefined project")
		    return
		    
		  end if
		  
		  projectFlow.Filename = CurrentProject.SaveFlow(self.AutomatorFlow.GetJSON, projectFlow.Filename)
		  
		  return 
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
		Group="Size"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
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
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
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
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="2"
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
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Window Behavior"
		InitialValue="True"
		Type="Boolean"
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
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&cFFFFFF"
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
		Name="MenuBar"
		Visible=true
		Group="Menus"
		InitialValue=""
		Type="DesktopMenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
