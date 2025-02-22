#tag Class
Protected Class clAutomatorFlow
	#tag Method, Flags = &h0
		Sub Constructor()
		  
		  doClear
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(SourceJSON as JSONItem)
		  doClear
		  
		  
		  if SourceJSON = nil then return 
		  
		  self.GroupName = SourceJSON.Value("groupname")
		  var jitems as JSONItem = SourceJSON.Value(cJSONTagItems) 
		  
		  if true then
		    
		    // if not jitems.IsArray then
		    // var k as integer = 1
		    // 
		    // else
		    
		    for i as integer = 0 to jitems.LastRowIndex
		      var jitem as JSONItem = jitems.ChildAt(i)
		      
		      var itemType as string  = jitem.Value("type")
		      
		      if itemType <> "start" then
		        var item as clAutomatorItem =  self.doAdd(itemType, jitem.value("configuration"))
		        
		        
		      end if
		      
		      System.DebugLog(jitem.ToString)
		      
		    next
		    
		    
		  end if
		  
		  Return
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CreateVisualSupport() As DesktopContainer
		  var cc as new ccAutomatorItem
		  
		  return cc
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function doAdd(itemType as String, SourceJSON as JSONItem) As clAutomatorItem
		  
		  var p as clAutomatorItem
		  
		  
		  p = ObjectFactory(itemType, SourceJSON)
		  
		  if p<>nil  then
		    items.Add(p)
		    if p.getTitle.Trim = "" then p.SetTitle("Step"+Format(lastStepId,"000000"))
		    
		    self.doSelect(items.LastIndex)
		    
		  end if
		  
		  return p 
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub doClear()
		  
		  items.RemoveAll
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub doEdit(theItem as integer)
		  
		  items(theItem).open
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function doInsertAfter(itemType as String, InsertAfterSteIp as integer) As clAutomatorItem
		  
		  var p as clAutomatorItem = ObjectFactory(itemType)
		  
		  if p = nil then return nil
		  
		  items.AddAt(InsertAfterSteIp + 1, p)
		  
		  p.SetTitle("Step"+Format(lastStepId,"000000"))
		  
		  self.doSelect(InsertAfterSteIp+1)
		  
		  return p 
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub doMoveBeforeItem(moveItem as integer, moveBeforeItem as integer)
		  var i  as integer
		  var j  as integer
		  dim tmp as clAutomatorItem
		  
		  'ItemStatus.Insert moveBeforeItem
		  
		  if moveitem<moveBeforeItem then
		    tmp=Items(moveItem)
		    for i=moveitem to moveBeforeItem-2
		      items(i)=items(i+1)
		    next
		    items(moveBeforeItem-1)=tmp
		    doSelect moveBeforeItem-1
		    
		  else 'moveitem>movebeforeitem
		    tmp=Items(moveItem)
		    for i=moveitem DownTo moveBeforeItem+1
		      items(i)=items(i-1)
		    next
		    items(moveBeforeItem)=tmp
		    doSelect moveBeforeItem 
		    
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub doRemove(theItem as integer)
		  items.remove theItem
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub doSelect(theItem as integer)
		   
		  for i as integer = 1 to ubound(items)
		    items(i).selected=(i=theItem)
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FindItemWithId(Identifier as integer) As clAutomatorItem
		  
		  for each s as clAutomatorItem in self.Items
		    if s.GetID = Identifier then return s
		    
		  next
		  
		  return nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetFlowName() As string
		  return "noname"
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetJSON() As JSONItem
		  
		  var MainJSON as new JSONItem
		  
		  MainJSON.Value("signature") = clAutomatorFlow.cSignature
		  MainJSON.Value("groupname") = GroupName
		  MainJSON.Value("count") = items.Count
		  
		  
		  MainJSON.Compact = False
		  
		  var jItems as new JSONItem
		  
		  for each item as clAutomatorItem in self.items
		    
		    if item <> nil then
		      var JItem as new JSONItem
		      
		      JItem.Value(cJSONTagExternalStepType) = Item.GetTypeAsString
		      JItem.Value(cJSONTagIndex) = Item.GetID.ToString
		      JItem.value(cJSONTagConfig) = Item.GetConfigJSON()
		      
		      jItems.add(jitem)
		      
		    end if
		    
		  next
		  
		  
		  MainJSON.Value(cJSONTagItems) = jItems
		  
		  return MainJSON
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetTitle(theItem as integer) As string
		  
		  return items(theItem).getTitle
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetTypeAsString(theItem as integer) As string
		  return items(theItem).GetTypeAsString
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Itemcount() As integer
		  return ubound(items)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LastStepId() As integer
		  
		  return items.LastIndex
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ObjectFactory(ObjectType as String, SourceJSON as JSONItem = nil) As clAutomatorItem
		  //
		  // Allocate an automator item
		  // 
		  return new clAutomatorItem(nil)
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function selected(theItem as integer) As boolean
		  return items(theitem).selected
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function visibleStatus(theItem as integer) As integer
		  return items(theitem).workarea
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub VisibleStatus(theItem as integer, assigns n as integer)
		  items(theItem).workarea=n
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		GroupName As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Items(0) As clAutomatorItem
	#tag EndProperty


	#tag Constant, Name = cJSONTagConfig, Type = String, Dynamic = False, Default = \"configuration", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cJSONTagExternalStepType, Type = String, Dynamic = False, Default = \"type", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cJSONTagIndex, Type = String, Dynamic = False, Default = \"itemIndex", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cJSONTagItems, Type = String, Dynamic = False, Default = \"items", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cSignature, Type = String, Dynamic = False, Default = \"AUTOSQL", Scope = Public
	#tag EndConstant


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
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
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
			Name="GroupName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
