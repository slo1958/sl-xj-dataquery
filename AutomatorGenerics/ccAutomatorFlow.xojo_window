#tag DesktopWindow
Begin DesktopContainer ccAutomatorFlow
   AllowAutoDeactivate=   True
   AllowFocus      =   False
   AllowFocusRing  =   False
   AllowTabs       =   True
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF
   Composited      =   False
   Enabled         =   True
   HasBackgroundColor=   False
   Height          =   300
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
   Begin DesktopCanvas Canvas1
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   True
      AllowTabs       =   False
      Backdrop        =   0
      Enabled         =   True
      Height          =   300
      Index           =   -2147483648
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Transparent     =   True
      Visible         =   True
      Width           =   567
   End
   Begin DesktopScrollbar Scrollbar1
      AllowAutoDeactivate=   True
      AllowFocus      =   True
      AllowLiveScrolling=   True
      Enabled         =   True
      Height          =   300
      Index           =   -2147483648
      Left            =   580
      LineStep        =   1
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MaximumValue    =   100
      MinimumValue    =   0
      PageStep        =   20
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Transparent     =   False
      Value           =   0
      Visible         =   True
      Width           =   19
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Function CreateCC(isExpanded as Boolean, item as clAutomatorItem) As ccAutomatorItem
		  
		  var c as new ccAutomatorItem
		  
		  c.EmbedWithin(Canvas1, 0, 0, canvas1.Width, c.cCollapsedHeigth)
		  
		  c.Collapse(false)
		  
		  c.SetID(item.GetID)
		  c.SetType(item.GetTypeAsString)
		  c.SetTitle(item.getTitle)
		  
		  
		  return c
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetFlow(NewFlow as clAutomatorFlow)
		  
		  if self.AutomatorFlow <> nil then
		    
		    for each item as clAutomatorItem in self.AutomatorFlow.Items
		      if item.VisualSupport <> nil then
		        item.VisualSupport.Close
		        item.VisualSupport = nil
		        
		      end if
		      
		    next
		    
		  end if
		  
		  self.AutomatorFlow = NewFlow
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateUI()
		  
		  var verticalOffset as integer = Scrollbar1.Value
		  
		  var yTotal as integer
		  var y as integer =  - verticalOffset + canvas1.top + 10
		  
		  var ccList() as ccAutomatorItem
		  
		  for each item as clAutomatorItem in self.AutomatorFlow.Items
		    var c as ccAutomatorItem = item.VisualSupport
		    
		    if c = nil then
		      c = CreateCC(True, item)
		      
		      item.VisualSupport = c
		      
		    end if
		    
		    var tmptext() as string
		    
		    if c.IsCollapsed then
		      if item.getTextItem(2) = "" then 
		        tmptext.Add(item.getTextItem(1))
		        
		      else
		        tmptext.Add(item.getTextItem(1) + " ...")
		        
		      end if
		      
		      
		    else
		      for i as integer = 1 to 4
		        tmptext.Add(item.getTextItem(i))
		        
		      next
		      
		    end if
		    
		    c.SetText(tmptext)
		    
		    c.Top = y
		    c.Visible = True
		    y = y + c.Height + 20
		    yTotal = yTotal + c.Height + 20
		    
		    ccList.add(c)
		    
		  next
		  
		  for each c as ccAutomatorItem in ccList
		    c.Refresh( true)
		    
		  next
		  
		  
		  if ScrollBar1.Value > yTotal then
		    
		    ScrollBar1.MaximumValue = yTotal
		    Scrollbar1.value = yTotal
		    
		  else
		    ScrollBar1.MaximumValue = yTotal
		    
		  end if
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		AutomatorFlow As clAutomatorFlow
	#tag EndProperty


#tag EndWindowCode

#tag Events Canvas1
	#tag Event
		Function MouseWheel(x As Integer, y As Integer, deltaX As Integer, deltaY As Integer) As Boolean
		  
		  ScrollBar1.Value = ScrollBar1.Value + deltay
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Scrollbar1
	#tag Event
		Sub ValueChanged()
		  UpdateUI
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
#tag EndViewBehavior
