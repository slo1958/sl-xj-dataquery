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
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
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
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
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
   Begin DesktopButton btn_run
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
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
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
   Begin DesktopButton btn_save
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
      Top             =   355
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin DesktopButton btn_save1
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "Debug"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   750
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   355
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Activated()
		  BuildListOfAnalysis
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AddStepAfter(Identifier as integer, NewStepType as string)
		  // Part of the AutomatorVisualInterface interface.
		  
		  var tmpStepType as string = ""
		  var js as JSONItem = nil
		  
		  if NewStepType = "Paste" then
		    var clp as new Clipboard
		    
		    if clp.TextAvailable then
		      
		      #Pragma BreakOnExceptions Off
		      
		      try
		        var txt as string = clp.Text
		        
		        js  = new JSONItem(txt)
		        
		        if  js.HasKey("signature") and js.value("signature") = clDataQueryFlow.cSignature then
		          tmpStepType = js.Value(clDataQueryItem.cJSONTagInternalStepType)
		          
		        else
		          js = nil
		          
		        end if
		        
		        
		      catch
		        
		      end try
		      
		      #Pragma BreakOnExceptions Default
		      
		    end if
		    
		  else
		    tmpStepType = NewStepType
		    
		  end if
		  
		  
		  if tmpStepType.Length>0 then
		    var s as  clAutomatorItem 
		    s = self.CurrentFlow.doInsertAfter(tmpStepType, Identifier)
		    
		    if js <> nil then clDataQueryItem(s).ProcessConfigJSON(js)
		    
		  end if
		  
		  RefreshStepIDs
		  
		  clDataQueryFlow(self.CurrentFlow).UpdateDataFlow
		  
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
		  
		  lb_Analaysis.AddRow("(new analysis)")
		  lb_Analaysis.RowTagAt(lb_Analaysis.LastAddedRowIndex) = "$$"
		  
		  return
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ExecuteAction(Identifier as integer, ActionCode as string)
		  // Part of the AutomatorVisualInterface interface.
		  
		  clDataQueryFlow(self.CurrentFlow).UpdateDataFlow
		  
		  var s as clAutomatorItem = self.CurrentFlow.FindItemWithId(Identifier)
		  
		  
		  if s = nil then return 
		  
		  select case ActionCode 
		  case ""
		    s.Open
		    
		  case cEdit
		    s.Open
		    
		  case cRunTillHere
		    var tmpSql as string
		    var tmpSource as string
		    
		    tmpSql = clDataQueryFlow(self.CurrentFlow).getSqlStatement(Identifier)
		    tmpSource = clDataQueryFlow(self.CurrentFlow).FlowDataSource
		    
		    var wqv as new wnd_queryViewer
		    wqv.ShowResults(self.CurrentProject.Connection, tmpSql, tmpSource)
		    
		  case "Copy"
		    var dq as clDataQueryItem = clDataQueryItem(s)
		    var js as JSONItem = dq.GetConfigJSON
		    js.value("signature") = clDataQueryFlow.cSignature
		    
		    var txt as string = js.ToString
		    var clp as new Clipboard
		    clp.Text = txt
		    
		  case else
		    
		  end select
		  
		  return
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ExecuteRemove(Identifier as integer, ActionCode as string)
		  var ItemToRemove as integer = Identifier
		  
		  var s as clAutomatorItem = self.CurrentFlow.FindItemWithId(Identifier)
		  
		  if s.VisualSupport <> nil then
		    s.VisualSupport.Close
		    s.VisualSupport = nil
		    
		  end if
		  
		  self.CurrentFlow.doRemove(ItemToRemove)
		  
		  clDataQueryFlow(self.CurrentFlow).UpdateDataFlow
		  
		  self.RefreshStepIDs
		  
		  UpdateUI
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetListOfOptionsForActions(CurrentStepType as string) As string()
		  var temp() as string
		  
		  
		  if CurrentStepType <> "Start" then 
		    temp.Add(cEdit)
		    temp.Add("Copy")
		    
		  end if
		   
		  temp.Add("-")
		  temp.Add(cRunTillHere)
		  
		  return temp
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetListOfOptionsForAdd(CurrentStepType as string) As string()
		  var tmp() as string = clDataQueryFlow.GetListOfSteps
		  
		  var txt as string
		  var clp as new Clipboard
		  
		  if clp.TextAvailable then
		    txt = clp.Text
		    
		    #Pragma BreakOnExceptions Off
		    
		    try
		      var js as JSONItem = new JSONItem(txt)
		      
		      if not js.HasKey("signature") then 
		        
		      elseif js.value("signature") = clDataQueryFlow.cSignature then
		        tmp.Add("-")
		        tmp.Add("Paste")
		      end if
		      
		      
		    catch
		      
		    end try
		    
		    #Pragma BreakOnExceptions Default
		    
		  end if
		  
		  return tmp
		  
		  
		  
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
		  
		  if self.CurrentFlow = nil then
		    var  d as new date
		    self.CurrentFlow =new clDataQueryFlow(self.CurrentProject)
		    tf_GroupTtitle.Text =  "Analysis "+d.ShortDate
		    sttLocalFilename.caption = ""
		    
		  else
		    tf_GroupTtitle.Text = self.CurrentFlow.GroupName
		    sttLocalFilename.caption =clDataQueryFlow( self.CurrentFlow).Filename
		  end if
		  
		  self.ccAutomatorFlow1.SetFlow self.CurrentFlow
		  
		  UpdateUI
		  
		  RefreshStepIDs 
		  
		  dirtyFlag=false
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RefreshStepIDs()
		  var i as integer
		  
		  for each c as clAutomatorItem in self.CurrentFlow.Items
		    c.SetID(i)
		    
		    i = i + 1
		    
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RenameStep(Identifier as integer, NewName as string)
		  // Part of the AutomatorVisualInterface interface.
		  
		  
		  var s as clAutomatorItem = self.CurrentFlow.FindItemWithId(Identifier)
		  
		  if s = nil then return 
		  
		  if s.GetID = Identifier then s.SetTitle(newName)
		  
		  UpdateUI
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetProjectAndFlow(p as clDataQueryProject, f as clDataQueryFlow)
		  
		  self.CurrentProject = p
		  self.CurrentFlow = f
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateUI()
		  
		  ccAutomatorFlow1.UpdateUI
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected CurrentFlow As clAutomatorFlow
	#tag EndProperty

	#tag Property, Flags = &h0
		CurrentProject As clDataQueryProject
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected dirtyFlag As boolean
	#tag EndProperty


	#tag Constant, Name = cEdit, Type = String, Dynamic = False, Default = \"Edit", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cRunTillHere, Type = String, Dynamic = False, Default = \"Run until here", Scope = Public
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
		  
		  var loadedFlow as  clDataQueryFlow
		  
		  if FileToOpen = "$$" then // new flow
		    loadedFlow = nil
		    
		  else
		    var loadedJSON as JSONItem = CurrentProject.LoadFlow(FileToOpen)
		    
		    loadedFlow = new clDataQueryFlow(CurrentProject, loadedJSON)
		    loadedFlow.Filename = FileToOpen
		    
		  end if
		  
		  var wnd as new wnd_main
		  wnd.Top = self.Top + 10
		  wnd.Left = self.left + 10
		  
		  wnd.SetProjectAndFlow(self.CurrentProject, loadedFlow)
		  wnd.Initialize
		  wnd.show
		  
		  // self.CurrentFlow = loadedFlow
		  // self.ccAutomatorFlow1.SetFlow loadedFlow
		  // 
		  // self.RefreshStepIDs
		  // 
		  // clDataQueryFlow(self.CurrentFlow).UpdateDataFlow
		  // 
		  // title  = loadedFlow.GroupName
		  // tf_GroupTtitle.text = loadedFlow.GroupName
		  // 
		  // UpdateUI
		  
		  return 
		  
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tf_GroupTtitle
	#tag Event
		Sub TextChange()
		  title=tf_GroupTtitle.text
		  self.CurrentFlow.GroupName = tf_GroupTtitle.text
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_run
	#tag Event
		Sub Pressed()
		  
		  var tmpSql as string
		  var tmpSource as string
		  
		  tmpSql = clDataQueryFlow(self.CurrentFlow).getSqlStatement(-1)
		  tmpSource = clDataQueryFlow(self.CurrentFlow).FlowDataSource
		  
		  var wqv as new wnd_queryViewer
		  
		  wqv.ShowResults(self.CurrentProject.Connection, tmpSql, tmpSource)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_save
	#tag Event
		Sub Pressed()
		  
		  var projectFile as FolderItem = CurrentProject.ProjectFIle
		  
		  var projectFlow as clDataQueryFlow = clDataQueryFlow(self.CurrentFlow)
		  
		  if projectFile = nil then 
		    MessageBox("Cannot save flow to undefined project")
		    return
		    
		  end if
		  
		  projectFlow.Filename = CurrentProject.SaveFlow(self.CurrentFlow.GetJSON, projectFlow.Filename)
		  
		  return 
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_save1
	#tag Event
		Sub Pressed()
		  
		  
		  var tmpSql as string
		  var tmpSource as string
		  
		  tmpSql = clDataQueryFlow(self.CurrentFlow).getSqlStatement(-1)
		  tmpSource = clDataQueryFlow(self.CurrentFlow).FlowDataSource
		  
		  var wdf as new wnd_debug_flow
		  
		  wdf.ShowMe(self.CurrentProject, clDataQueryFlow(self.CurrentFlow))
		  
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
