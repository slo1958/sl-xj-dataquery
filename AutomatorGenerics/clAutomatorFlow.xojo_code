#tag Class
Protected Class clAutomatorFlow
	#tag Method, Flags = &h0
		Sub Constructor()
		  
		  doClear
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function CreateVisualSupport() As DesktopContainer
		  var cc as new ccAutomatorItem
		  
		  return cc
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function doAdd(itemType as String) As clAutomatorItem
		  
		  var p as clAutomatorItem
		  
		  
		  p=ObjectFactory(itemType)
		  
		  if p<>nil  then
		    items.Add(p)
		    p.SetTitle("Step"+Format(lastStepId,"000000"))
		    
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
		  var i  as integer
		  for i=1 to ubound(items)
		    items(i).selected=(i=theItem)
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FindItemWithId(Identifier as integer) As clAutomatorItem
		  
		  for each s as clAutomatorItem in self.Items
		    if s.ID = Identifier then return s
		    
		  next
		  
		  return nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetJSON() As JSONItem
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetTitle(theItem as integer) As string
		  return items(theItem).getTitle
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetType(theItem as integer) As string
		  return items(theItem).getType
		  
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
		Sub LoadFromTextFile(theTextFilename as string)
		  
		  
		  var txtin as TextInputStream
		  
		  txtin=GetFolderItem(theTextFileName).OpenAsTextFile
		  
		  var MainJSON as new JSONItem(txtin.ReadAll)
		  
		  txtin.Close
		  
		  MessageBox( "Invalid file signature")
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ObjectFactory(ObjectType as String) As clAutomatorItem
		  //
		  // Allocate an automator item
		  // 
		  return new clAutomatorItem("invalid")
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ProcessLoadLine(clc as clAutomatorItem,theOpcode as integer, theParam as string)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SaveToFile(theTextFilename as string)
		  var txtout as TextOutputStream
		  
		  var MainJSON as new JSONItem
		  
		  MainJSON.Value("signature") = clAutomatorFlow.cSignature
		  MainJSON.Value("groupname") = GroupName
		  MainJSON.Value("count") = items.Count
		  
		  for each item as clAutomatorItem in self.items
		    
		    if item <> nil then
		      var itemTitle as string = item.getTitle
		      var itemType as string = item.GetType
		      var itemConfig as JSONItem = item.GetConfigJSON
		      
		      var ChildJSON as JSONItem
		      ChildJSON.value("type") = itemType
		      ChildJSON.value("title") = itemTitle
		      ChildJSON.value("configuration") = itemConfig
		      
		    end if
		    
		  next
		  
		  txtout=GetFolderItem(theTextFileName).CreateTextFile
		  
		  txtout.Write(MainJSON.ToString) 
		  
		  txtout.close
		  
		End Sub
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
