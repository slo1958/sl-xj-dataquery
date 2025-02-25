#tag DesktopWindow
Begin DesktopWindow wnd_queryViewer
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
   Height          =   534
   ImplicitInstance=   False
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   ""
   MenuBarVisible  =   False
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   True
   Title           =   "Untitled"
   Type            =   0
   Visible         =   True
   Width           =   600
   Begin DesktopTabPanel TabPanel1
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   514
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Panels          =   ""
      Scope           =   0
      SmallTabs       =   False
      TabDefinition   =   "Results\rGenerated SQL"
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      Underline       =   False
      Value           =   1
      Visible         =   True
      Width           =   560
      Begin DesktopListBox lb_Data
         AllowAutoDeactivate=   True
         AllowAutoHideScrollbars=   True
         AllowExpandableRows=   False
         AllowFocusRing  =   True
         AllowResizableColumns=   True
         AllowRowDragging=   False
         AllowRowReordering=   False
         Bold            =   False
         ColumnCount     =   1
         ColumnWidths    =   ""
         DefaultRowHeight=   -1
         DropIndicatorVisible=   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         GridLineStyle   =   0
         HasBorder       =   True
         HasHeader       =   True
         HasHorizontalScrollbar=   True
         HasVerticalScrollbar=   True
         HeadingIndex    =   -1
         Height          =   390
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   40
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         RequiresSelection=   False
         RowSelectionType=   0
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   33
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   520
         _ScrollOffset   =   0
         _ScrollWidth    =   -1
      End
      Begin DesktopButton btn_moreRows
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "More"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   388
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   462
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin DesktopLabel lbl_message0
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   40
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Untitled"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   435
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   520
      End
      Begin DesktopTextArea ta_sql
         AllowAutoDeactivate=   True
         AllowFocusRing  =   True
         AllowSpellChecking=   True
         AllowStyledText =   True
         AllowTabs       =   False
         BackgroundColor =   &cFFFFFF
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Format          =   ""
         HasBorder       =   True
         HasHorizontalScrollbar=   False
         HasVerticalScrollbar=   True
         Height          =   426
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   40
         LineHeight      =   0.0
         LineSpacing     =   1.0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Multiline       =   True
         ReadOnly        =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   38
         Transparent     =   False
         Underline       =   False
         UnicodeMode     =   1
         ValidationMask  =   ""
         Visible         =   True
         Width           =   520
      End
      Begin DesktopButton btn_export_sql
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
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   388
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   476
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin DesktopButton Button1
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "Close"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   480
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   3
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   462
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin DesktopButton Button2
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "Close"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   480
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   2
         TabPanelIndex   =   2
         TabStop         =   True
         Tooltip         =   ""
         Top             =   474
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin DesktopButton btn_export_csv
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
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   296
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   462
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
      Begin DesktopLabel lbl_message1
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   40
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   False
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Untitled"
         TextAlignment   =   0
         TextColor       =   &c000000
         Tooltip         =   ""
         Top             =   476
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   336
      End
      Begin DesktopButton btn_copy
         AllowAutoDeactivate=   True
         Bold            =   False
         Cancel          =   False
         Caption         =   "Copy"
         Default         =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   False
         Left            =   192
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   False
         MacButtonStyle  =   0
         Scope           =   0
         TabIndex        =   5
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   462
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   80
      End
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub AddNextRows()
		  
		  const cStartColWidth as string = "96"
		  
		  var nextCount as integer = 200
		  
		  if Results.AfterLastRow then return
		  
		  
		  if lb_Data.ColumnCount = 1 then
		    var nbcol as integer = results.ColumnCount
		    var colwidth as string = cStartColWidth
		    
		    lb_Data.ColumnCount = results.ColumnCount + 1
		    lb_Data.HasHeader = True
		    
		    lb_Data.HeaderAt(0) = "#"
		    
		    for i as integer = 0 to Results.ColumnCount - 1
		      lb_Data.HeaderAt( i+1 ) = results.ColumnAt(i).Name
		      colwidth = colwidth + "," + cStartColWidth
		    next
		    
		    lb_Data.ColumnWidths = colwidth
		    
		    redim self.RunningTotal(results.ColumnCount)
		    
		  end if
		  
		  
		  while nextCount > 0 and not Results.AfterLastRow 
		    RowCounter = RowCounter + 1
		    lb_Data.AddRow(str(RowCounter))
		    
		    var r as integer = lb_Data.LastAddedRowIndex
		    
		    for i as integer = 0 to Results.ColumnCount - 1
		      var col as DatabaseColumn = results.ColumnAt(i)
		      
		      self.RunningTotal(0) = self.RunningTotal(0) + 1
		      
		      if col.type = 0 then
		        
		        if col.DoubleValue <> 0 then // Xojo returns datatype 0 for some number columns
		          lb_Data.CellTextAt(r, i+1) = format(col.DoubleValue, "-######0.00#####")
		          self.RunningTotal(i+1) = self.RunningTotal(i+1) + col.DoubleValue
		        end if
		        
		      elseif col.Type = 6 or col.Type = 7  then
		        lb_Data.CellTextAt(r, i+1) = format(col.DoubleValue, "-######0.00#####")
		        self.RunningTotal(i+1) = self.RunningTotal(i+1) + col.DoubleValue
		        
		      else
		        lb_Data.CellTextAt(r, i+1) = col.StringValue
		        
		      end if
		      
		    next
		    Results.MoveToNextRow
		    
		    nextCount = nextCount - 1
		    
		  wend
		  
		  btn_moreRows.Enabled = not Results.AfterLastRow 
		  
		  return
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowResults(pDBConnection as clBasicSQLiteDB, sqlQuery as string, sourceTable as string)
		  self.SqlCode = sqlQuery
		  self.DBConnection = pdbConnection
		  
		  self.Title = sourceTable + " from " + self.DBConnection.Name
		  
		  ta_sql.Text = sqlQuery
		  
		  var rs as RowSet
		  var rCount as integer
		  
		  try
		    
		    rs = self.DBConnection.db.SelectSQL("Select count(*) cnt from (" + self.SqlCode+")")
		    
		  catch err As DatabaseException
		    rs = nil
		    lbl_message0.text = "No results - SQL error"
		    lbl_message1.text = "SQL Error: " + err.Message
		    
		    
		  Catch
		    
		  end try
		  
		  if rs = nil then
		    btn_export_csv.Enabled = False
		    btn_moreRows.Enabled = False
		    
		  else
		    
		    for each row as DatabaseRow in rs
		      rCount = row.Column("cnt").IntegerValue
		      
		    next
		    
		    lbl_message0.text = " Query returned " + str(rCount) + " rows."
		    lbl_message1.text = "Query length " + str(self.SqlCode.Length) + " chars."
		    
		    Results = self.DBConnection.db.SelectSQL(self.SqlCode)
		    
		    lb_Data.RemoveAllRows
		    RowCounter = 0
		    
		    AddNextRows()
		    
		    ShowTotals
		    
		  end if
		  
		  me.ShowModal
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowTotals()
		  
		  if not Results.AfterLastRow then return
		  
		  lb_Data.AddRow("")
		  
		  lb_Data.AddRow("TOTAL")
		  
		  for  i as integer = 1 to lb_Data.LastColumnIndex
		    if RunningTotal(i) <> 0 then
		      lb_Data.CellTextAt(lb_Data.LastAddedRowIndex, i) =   format(RunningTotal(i), "-######0.00#####")
		      
		    end if
		    
		  next
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		DBConnection As clBasicSQLiteDB
	#tag EndProperty

	#tag Property, Flags = &h0
		Results As rowset
	#tag EndProperty

	#tag Property, Flags = &h0
		RowCounter As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		RunningTotal() As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		SqlCode As string
	#tag EndProperty


#tag EndWindowCode

#tag Events btn_moreRows
	#tag Event
		Sub Pressed()
		  AddNextRows
		  
		  ShowTotals
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_export_sql
	#tag Event
		Sub Pressed()
		  var res as RowSet= self.DBConnection.db.SelectSQL(self.SqlCode)
		  
		  var fd as FolderItem = FolderItem.ShowSaveFileDialog("","ExportSql.txt")
		  
		  if fd = nil then return
		  
		  if fd.IsFolder then return 
		  
		  if fd.Exists then fd.Remove
		  
		  var tt as TextOutputStream = TextOutputStream.Create(fd)
		  
		  tt.Write(ta_sql.Text)
		  
		  tt.Close
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button1
	#tag Event
		Sub Pressed()
		  self.Close
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Button2
	#tag Event
		Sub Pressed()
		  self.Close
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_export_csv
	#tag Event
		Sub Pressed()
		  var res as RowSet= self.DBConnection.db.SelectSQL(self.SqlCode)
		  
		  var fd as FolderItem = FolderItem.ShowSaveFileDialog("","Export.csv")
		  
		  if fd = nil then return
		  
		  if fd.IsFolder then return 
		  
		  if fd.Exists then fd.Remove
		  
		  var tt as TextOutputStream = TextOutputStream.Create(fd)
		  
		  var fields() as string
		  
		  
		  for i as integer = 0 to res.ColumnCount - 1
		    fields.add( res.ColumnAt(i).Name)
		    
		  next
		  
		  tt.WriteLine(string.FromArray(fields, ","))
		  
		  while not res.AfterLastRow
		    fields.RemoveAll
		    
		    for i as integer = 0 to res.ColumnCount -1
		      var col as DatabaseColumn = res.ColumnAt(i)
		      
		      if col.Type = 6 or col.Type = 7 then
		        fields.add( format(col.DoubleValue, "-######0.00#####"))
		        
		      else
		        fields.add(  col.StringValue)
		        
		      end if
		      
		    next
		    
		    tt.WriteLine(string.FromArray(fields, ","))
		    
		    res.MoveToNextRow
		    
		  wend
		  
		  
		  tt.Close
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btn_copy
	#tag Event
		Sub Pressed()
		  var clp as new Clipboard
		  
		  var res as RowSet= self.DBConnection.db.SelectSQL(self.SqlCode)
		   
		  var rows() as string
		  
		  var fields() as string
		  
		  
		  for i as integer = 0 to res.ColumnCount - 1
		    fields.add( res.ColumnAt(i).Name)
		    
		  next
		  
		  rows.add(string.FromArray(fields, chr(9)))
		  
		  while not res.AfterLastRow
		    fields.RemoveAll
		    
		    for i as integer = 0 to res.ColumnCount -1
		      var col as DatabaseColumn = res.ColumnAt(i)
		      
		      if col.Type = 6 or col.Type = 7 then
		        fields.add( format(col.DoubleValue, "-######0.00#####"))
		        
		      else
		        fields.add(  col.StringValue)
		        
		      end if
		      
		    next
		    
		    rows.add(string.FromArray(fields, chr(9)))
		    
		    res.MoveToNextRow
		    
		  wend
		  
		  clp.Text = string.FromArray(rows, EndOfLine)
		  
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
	#tag ViewProperty
		Name="SqlCode"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="RowCounter"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
