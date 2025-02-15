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
   ImplicitInstance=   True
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
   Visible         =   True
   Width           =   934
   Begin DesktopListBox ListBox3
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   True
      AllowResizableColumns=   False
      AllowRowDragging=   False
      AllowRowReordering=   False
      Bold            =   False
      ColumnCount     =   2
      ColumnWidths    =   "0,100%"
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
      AutoDeactivate  =   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   32
      HelpTag         =   ""
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
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "Tahoma"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   0
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   274
   End
   Begin TextField tf_GroupTtitle
      AcceptTabs      =   False
      Alignment       =   0
      AllowSpellChecking=   False
      AutoDeactivate  =   True
      BackColor       =   &cFFFFFF00
      Bold            =   True
      Border          =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   20
      HelpTag         =   ""
      Hint            =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   315
      LimitText       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Mask            =   ""
      Password        =   False
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "Tahoma"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   5
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   599
   End
   Begin Label sttLocalFilename
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   32
      HelpTag         =   ""
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
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
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
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Opening()
		  
		  BuildListOfAnalysis
		  
		  self.AutomatorFlow =new clDataQueryFlow("CurrentSales")
		  
		  self.ccAutomatorFlow1.SetFlow self.AutomatorFlow
		  
		  var  d as new date
		  
		  tf_GroupTtitle.Text =  "Analysis "+d.ShortDate
		  tmpCurrentFile=""
		  
		  UpdateUI
		  
		  dirtyFlag=false
		  sttLocalFilename.caption=tmpCurrentFile
		  
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
		  dim fld as FolderItem
		  var i  as integer
		  dim s as string
		  dim s2 as string
		  dim s3 as string
		  dim r as integer
		  
		  dim txt as TextInputStream
		  
		  ListBox3.RemoveAllRows
		  
		  fld=GetFolderItem("")
		  
		  for i=1 to fld.Count
		    if fld.item(i).Directory then
		    else
		      s=trim(fld.Item(i).name)
		      
		      if uppercase(right(s,4))=".TXT" then
		        txt=GetFolderItem(s).OpenAsTextFile
		        s2=txt.readline
		        
		        if s2=clAutomatorFlow.cSignature  then
		          s3=""
		          while not txt.eof and s3=""
		            s3=trim(txt.readline)
		            
		            if left(s3,3)<>"60;" then 
		              s3="" 
		            else
		              s3=NthField(s3,";",2)
		            end if
		            
		          wend
		          
		        end if
		        
		        txt.close
		        if s2=clAutomatorFlow.cSignature then
		          ListBox3.addrow  s
		          r=ListBox3.LastRowIndex
		          ListBox3.CellTextAt(r,1)=s3
		        end if
		      end if
		      
		    end if
		  next
		  
		  'Queries_Group.Visible=(ListBox3.ListCount>0) and viewPresent_Ranking
		  'Queries_Group.Visible=viewPresent_Ranking and paramBoolean("SHOW_QUERIES",true)
		  
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
		    
		    wnd_queryViewer.ShowResults(app.DBConnection, tmpSql, tmpSource)
		    
		    
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
		Sub UpdateUI()
		  
		  ccAutomatorFlow1.UpdateUI
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected AutomatorFlow As clAutomatorFlow
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

#tag Events ListBox3
	#tag Event
		Sub DoublePressed()
		  dim sFileToOpen as string
		  var i  as integer
		  
		  i = Listbox3.SelectedRowIndex
		  
		  if i>=0 Then
		    sFileToOpen=ListBox3.CellTextAt(i,0)
		    
		    self.AutomatorFlow.LoadFromTextFile(sFileToOpen)
		    
		    tmpCurrentFile=sFileToOpen
		    
		    tf_GroupTtitle.Text = self.AutomatorFlow.GroupName
		    
		    Refresh
		    
		  end if
		  
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
		  
		  wnd_queryViewer.ShowResults(app.DBConnection, tmpSql, tmpSource)
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
