#tag Class
Protected Class clDataQueryItem_GroupSplit
Inherits clDataQueryItem
	#tag Method, Flags = &h0
		Sub Constructor()
		  
		  super.Constructor(StepTypes.GroupSplit)
		  
		  var i  as integer
		  
		  for i=0 to maxItems
		    binuse(i)=false
		  next
		  
		  nextItem=-1
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(SourceJSON as JSONItem)
		  
		  // Calling the overridden superclass constructor.
		  
		  super.Constructor(StepTypes.GroupSplit, SourceJSON)
		  
		  //var ItemTitle as string = SourceJSON.Value(cJSONTagName)
		  //Self.SetTitle(ItemTitle)
		  
		  var jItems as    JSONItem = SourceJSON.Value(cJSONTagItems)
		  
		  if jitems.IsArray then
		    for i as integer = 0 to jItems.LastRowIndex
		      
		      var jitem as JSONItem = jitems.ChildAt(i)
		      
		      var index as integer = jitem.value(cJSONTagIndex)
		      
		      sField1(Index) = jitem.Value(cJSONTagField)
		      
		      bInUse(index) = True
		      
		      if index > nextItem then nextItem = index
		      
		    next
		    
		    
		  else
		    for i as integer=0 to maxItems
		      binuse(i)=false
		    next
		    
		    nextItem=-1
		    
		  end if
		  
		  
		  return 
		  
		  
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
		      
		      jitems.Add(jitem)
		    end if
		    
		  next
		  jMaster.Value(cJSONTagItems) = jitems
		  
		  return jMaster
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getOneItem(theItem as integer) As string
		  dim s as string
		  if bInUse(theItem) then
		    s=sField1(theItem)
		    
		    return s
		    
		  else
		    return ""
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getSql(IsLastStep as boolean) As String
		  dim sSource as string
		  dim sPostFix as string
		  var i  as integer
		  dim n as integer
		  dim s as string
		  dim sSep as string
		  dim sGroupBy as string
		  
		  if prevDataQueryItem<>nil then 
		    sSource=prevDataQueryItem.getSql(false)
		    sPostFix=prevDataQueryItem.fieldPostFix
		  else
		    ssource=""
		    sPostFix=""
		  end if
		  
		  s=""
		  
		  if sPostFix<>"" then
		    
		    s="select  "   
		    sSep=""
		    
		    for i=0 to ubound(sField1)
		      if bInUse(i) and sField1(i).trim.Length > 0 then
		        s=s+sSep + sField1(i)+"_"+sPostFix +"  as "+sField1(i) + PostFixStr(IsLastStep)
		        sSep=","
		      end if
		    next
		    
		    for i=1 to ubound(valueFields)
		      s=s+ssep+"sum(" + valueFields(i)+"_"+sPostFix +") as "+valueFields(i) + PostFixStr(IsLastStep)
		      sSep=","
		    next
		    
		    s=s+"  FROM (" + chr(13) + chr(13) + sSource + chr(13) +  ")" + chr(13) 
		    
		    sGroupBy=" GROUP BY "
		    ssep=""
		    
		    for i=0 to ubound(sField1)
		      if bInUse(i) and sField1(i).trim.Length > 0 then
		        s=s+sGroupBy
		        sGroupBy=""
		        s=s+ssep
		        ssep=" , "
		        
		        s=s+sfield1(i)+"_"+sPostFix
		        
		      end if
		      
		    next
		    
		    
		  end if
		  
		  return s
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getTextItem(theItem as integer) As string
		  
		  if theItem <4 then
		    if bInuse(theItem-1) then
		      return getOneItem(theItem-1)
		    else
		      return ""
		    end if
		    
		  elseif itemInUse>4 then
		    return "..."
		  elseif bInUse(3) then
		    return getOneItem(3)
		  else
		    return ""
		  end if
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function itemInUse() As integer
		  var i  as integer
		  var j  as integer
		  
		  j=0
		  
		  for i=0 to ubound(sfield1)
		    if bInUse(i) then j=j+1
		  next
		  
		  Return j
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function myImage() As picture
		  return GrouSplit_38_38
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowConfigDialog()
		  
		  wndDataQueryItem_GroupSplit.showme me
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub updateFieldsFromPred()
		  '
		  ' a group/split   but passes all value fields and only selected key fields
		  '
		  var i  as integer
		  var j  as integer
		  dim n as integer
		  dim s as string
		  
		  if prevDataQueryItem<>nil then
		    
		    '
		    ' obtain field type of selected fields
		    '
		    for i=0 to ubound(sField1)
		      s=sField1(i)
		      
		      for j=1 to ubound(prevDataQueryItem.keyFields)
		        if prevDataQueryItem.keyFields(j)=s then
		          sField1Type(i)=prevDataQueryItem.keyFieldType(j)
		        end if
		      next
		    next
		    
		    
		    n=itemInUse
		    redim keyFields(n)
		    redim keyFieldType(n)
		    
		    j=0
		    for i=0 to ubound(sfield1)
		      if binuse(i) then  
		        j=j+1
		        keyFields(j)=sField1(i)
		        keyFieldType(j)=sField1Type(i)
		      end if
		    next
		    
		    n=ubound(prevDataQueryItem.valueFields)
		    redim valueFields(n)
		    
		    for i=1 to n
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
		sField1(maxItems) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		sField1Type(maxItems) As InternalFieldTypes
	#tag EndProperty


	#tag Constant, Name = cJSONTagField, Type = String, Dynamic = False, Default = \"groupbyfield", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cJSONTagIndex, Type = String, Dynamic = False, Default = \"index", Scope = Public
	#tag EndConstant

	#tag Constant, Name = maxItems, Type = Integer, Dynamic = False, Default = \"6", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="ID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
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
			Name="tmp"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
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
