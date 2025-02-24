#tag Class
Protected Class clDataQueryItem_Sort
Inherits clDataQueryItem
	#tag Method, Flags = &h0
		Sub Constructor(SourceJSON as JSONItem)
		  // Calling the overridden superclass constructor.
		  
		  Super.Constructor(SourceJSON)
		  
		  
		  for i as integer =0 to maxItems
		    binuse(i)=false
		  next
		  
		  nextItem=-1
		  recLimit=0
		  
		  if SourceJSON = nil then Return
		  
		  
		  var jItems as    JSONItem = SourceJSON.Value(cJSONTagItems)
		  
		  if jitems.IsArray then
		    for i as integer = 0 to jItems.LastRowIndex
		      var jItem as JSONItem = jitems.ChildAt(i)
		      
		      var index as integer = jitem.value(cJSONTagIndex) 
		      
		      bInUse(index) = True
		      if index > nextItem then nextItem = index
		      
		      sField1(index) = jitem.Value(cJSONTagField)
		      sFieldS(index) = jItem.Value(cJSONTagSortOrder) 
		      
		    next
		    
		  end if
		  
		  reclimit = SourceJSON.value(cJSONTagRecordLimit)
		  
		  Return
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetConfigJSON() As JSONItem
		  // Calling the overridden superclass method.
		  
		  var jMaster as  JSONItem = super.GetConfigJSON()
		  
		  var jItems as new  JSONItem
		  
		  for i as integer = 0 to maxItems
		    if bInUse(i) then 
		      var jItem as new JSONItem
		      
		      jitem.value(cJSONTagIndex) = i
		      jitem.Value(cJSONTagField) = sField1(i)
		      jItem.Value(cJSONTagSortOrder) = sFieldS(i)
		      
		      jitems.Add(jitem)
		    end if
		    
		  next
		  jMaster.Value(cJSONTagItems) = jitems
		  jMaster.Value(cJSONTagRecordLimit) = str(reclimit)
		  return jMaster
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getOneItem(theItem as integer) As string
		  dim s as string
		  if bInUse(theItem) then
		    s=sField1(theItem)
		    
		    return s
		    
		  elseif theItem = 0 and recLimit > 0 then 
		    return "Limit " + str(recLimit) + " rows"
		    
		  elseif theItem = 0 then
		    return ""
		    
		  elseif   bInUse(theItem-1) and recLimit>0 then
		    return "Limit " + str(recLimit) + " rows"
		    
		  else
		    return ""
		    
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getSql(IsLastStep as boolean) As string
		  dim s as string
		  dim sSource as string
		  dim sPostFix as string
		  
		  dim ssep as string
		  
		  if prevDataQueryItem<>nil then
		    
		    sSource=prevDataQueryItem.getSql(false)
		    sPostFix=prevDataQueryItem.fieldPostFix
		    
		  end if
		  
		  if ssource<>"" then
		    s="select "
		    
		    ssep=""
		    
		    for i as integer = 0 to ubound(prevDataQueryItem.keyFields)
		      if prevDataQueryItem.keyFields(i) <> nil then
		        s=s+ssep
		        s=s+prevDataQueryItem.keyFields(i).Name +"_"+sPostFix+" as "+prevDataQueryItem.keyFields(i).Name  + PostFixStr(IsLastStep)
		        ssep=","
		        
		      end if
		    next
		    
		    for i as integer = 1 to ubound(prevDataQueryItem.valueFields)
		      s=s+ssep
		      s=s+prevDataQueryItem.valueFields(i)+"_"+sPostFix+" as "+prevDataQueryItem.valueFields(i)  + PostFixStr(IsLastStep)
		      ssep=","
		    next
		    
		    
		    s=s+" FROM (" + chr(13) + chr(13) + sSource + chr(13) +  ")" + chr(13) 
		    
		    ssep=" order by "
		    
		    for i as integer = 0 to maxitems
		      if sfield1(i)<>"" then
		        s=s+ssep+sfield1(i)+"_"+sPostFix+"  "+sfields(i)
		        ssep=","
		      end if
		    next
		    
		    
		    if recLimit>0 then
		      s=s+" limit  "+str(reclimit)+"    "
		    end if
		    
		    
		  else
		    s=""
		    
		  end if
		  
		  return s
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getTextItem(theItem as integer) As string
		  
		  if theItem <4 then
		    return getOneItem(theItem-1)
		    
		  elseif itemInUse>4 then
		    return "..."
		    
		  elseif bInUse(3) then
		    return getOneItem(3)
		    
		  else
		    return ""
		    
		  end if
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetTypeAsEnum() As StepTypes
		  
		  return StepTypes.Sort
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function itemInUse() As integer
		  
		  var j  as integer
		  
		  j=0
		  
		  for i as integer = 0 to ubound(sfield1)
		    if bInUse(i) then j=j+1
		  next
		  
		  Return j
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function myImage() As picture
		  return sort_38_38
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowConfigDialog()
		  
		  wndDataQueryItem_sort.showme me
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub updateFieldsFromPred()
		  '
		  ' passes all fields (key, values)
		  '
		   
		  
		  if prevDataQueryItem<>nil then
		    
		    
		    ' move all key fields
		    '
		    self.keyFields.RemoveAll
		    
		    for each field as clDataQueryFieldInfo in prevDataQueryItem.keyFields
		      self.keyFields.Add(field.Clone)
		      
		    next
		    
		    
		    redim valueFields(prevDataQueryItem.valueFields.LastIndex)
		    
		    for i as integer = 0 to prevDataQueryItem.valueFields.LastIndex
		      valueFields(i)=prevDataQueryItem.valueFields(i)
		    next
		    
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub updateFieldsFromPred1()
		  '
		  ' passes all fields (key, values)
		  '
		  
		  var j  as integer
		  dim n as integer
		  dim s as string
		  
		  if prevDataQueryItem<>nil then
		    
		    '
		    ' obtain field type of selected fields
		    '
		    for i as integer = 0 to ubound(sField1)
		      sField1Type(i) = prevDataQueryItem.getKeyType(sfield1(i))
		      
		     next
		    
		    
		    keyFields.RemoveAll
		    
		    for i as integer = 0 to ubound(sfield1)
		      keyFields.add(new clDataQueryFieldInfo(sField1(i) , sField1Type(i)))
		      
		    next
		    
		    n=ubound(prevDataQueryItem.valueFields)
		    redim valueFields(n)
		    
		    for i as integer = 1 to n
		      valueFields(i)=prevDataQueryItem.valueFields(i)
		    next
		    
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		bInUse(maxItems) As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		nextItem As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		recLimit As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		sField1(maxItems) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		sField1Type(maxItems) As InternalFieldTypes
	#tag EndProperty

	#tag Property, Flags = &h0
		sFieldS(maxItems) As string
	#tag EndProperty


	#tag Constant, Name = cJSONTagField, Type = String, Dynamic = False, Default = \"field", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cJSONTagIndex, Type = String, Dynamic = False, Default = \"index", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cJSONTagRecordLimit, Type = String, Dynamic = False, Default = \"recordlimit", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cJSONTagSortOrder, Type = String, Dynamic = False, Default = \"order", Scope = Public
	#tag EndConstant

	#tag Constant, Name = maxItems, Type = Integer, Dynamic = False, Default = \"6", Scope = Public
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
			Name="selected"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="workarea"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="fieldPostFix"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dataFlowError"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="recLimit"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="nextItem"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
