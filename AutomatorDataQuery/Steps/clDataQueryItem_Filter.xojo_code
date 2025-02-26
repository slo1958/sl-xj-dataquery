#tag Class
Protected Class clDataQueryItem_Filter
Inherits clDataQueryItem
	#tag Method, Flags = &h0
		Sub Constructor(SourceJSON as JSONItem)
		  // Calling the overridden superclass constructor.
		  
		  for i as integer = 0 to maxItems
		    binuse(i)=false
		  next
		  
		  nextItem=-1
		  
		  super.Constructor(SourceJSON)
		  
		  // processConfigJSON is called by the super constructor if SourceJSON is not nil
		  
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
		      jitem.value(cJSONTagConstant) = sconst(i)
		      jitem.value(cJSONTagField1) = sfield1(i)
		      jitem.value(cJSONTagField2) = sfield2(i)
		      jitem.value(cJSONTagOperator) = soper(i)
		      
		      jItems.Add(jItem)
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
		    s=s+" "+ sOper(theItem)
		    s=s+" "
		    
		    if sField2(theItem) =  cUseConstant Then
		      s=s+sConst(theitem)
		      
		    elseif sField2(theItem) = cIsEmpty then
		      s=s+"  empty"
		      
		    else
		      s=s+" "+sfield2(theItem)
		      
		    end if
		    return s
		    
		  else
		    return ""
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getSql(IsLastStep as boolean) As string
		  dim sSource as string
		  dim sPostFix as string
		  
		  dim n as integer
		  dim s as string
		  dim sSep as string
		  
		  
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
		    
		    for i as integer = 0 to keyFields.LastIndex
		      if keyFields(i) <> nil then 
		        s=s+sSep + keyFields(i).Name +"_"+sPostFix +"  as "+keyFields(i).Name  + PostFixStr(IsLastStep)
		        sSep=","
		        
		      end if
		    next
		    
		    for i as integer = 1 to ubound(valueFields)
		      s=s+"," + valueFields(i)+"_"+sPostFix +" as "+valueFields(i) + PostFixStr(IsLastStep)
		    next
		    
		    s = s +"  FROM (" + chr(13) + chr(13) + sSource + chr(13) +  ")" + chr(13) 
		    
		    
		    
		    var tempWheres() as string
		    
		    for i as integer = 0 to ubound(sConst)
		      var tempWhere as string
		      
		      if bInUse(i) and sfield1(i) <> "" then
		        tempWhere = sfield1(i)+"_"+sPostFix
		        
		        if sField2(i)=cUseConstant and sConst(i) <> "" then
		          if soper(i)  = cOperatorIN then
		            tempWhere = tempWhere + " in (" + sConst(i) + ")"
		            
		          else
		            tempWhere = tempWhere + TradOp(soper(i))
		            tempWhere = tempWhere + sConst(i)
		            
		          end if
		          
		        elseif sField2(i) = cUseConstant then
		          tempWhere = ""
		          
		        elseif sField2(i) = cIsEmpty then
		          tempWhere = tempWhere +  " is null " 
		          
		        elseif sField2(i) <>"" then
		          tempWhere = tempWhere + TradOp(soper(i))
		          tempWhere = tempWhere + sField2(i)+"_"+sPostFix
		          
		        else
		          tempWhere = ""
		          
		        end if
		        
		      end if
		      
		      if tempWhere.Length  >0 then  tempWheres.Add(tempWhere)
		      
		    next
		    
		    
		    if tempWheres.count > 0 then
		      s = s + " WHERE " + string.FromArray(tempWheres," and ")
		      
		    end if
		    
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

	#tag Method, Flags = &h0
		Function GetTypeAsEnum() As StepTypes
		  
		  return StepTypes.Filter
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function itemInUse() As integer
		  
		  var itemCount  as integer = 0
		  
		  for i as integer = 0 to maxItems
		    if bInUse(i) then itemCount = itemCount + 1
		    
		  next
		  
		  Return itemCount
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function myImage() As picture
		  return filter_38_38
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ProcessConfigJSON(SourceJSON as JSONItem)
		  // Calling the overridden superclass method.
		  Super.ProcessConfigJSON(SourceJSON)
		  
		  
		  
		  var jItems as  JSONItem = SourceJSON.Value(cJSONTagItems)
		  
		  if jitems.IsArray then
		    for i as integer = 0 to jItems.LastRowIndex
		      var jitem as JSONItem = jitems.ChildAt(i)
		      
		      var index as integer = jitem.value(cJSONTagIndex)
		      sconst(index) = jitem.value(cJSONTagConstant)
		      sfield1(index) = jitem.value(cJSONTagField1)
		      sfield2(index) = jitem.value(cJSONTagField2)
		      soper(index) = jitem.value(cJSONTagOperator) 
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
		Sub ShowConfigDialog()
		  
		  wndDataQueryItem_Filter.showme me
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TradOp(theOp as string) As string
		  if theOp="!=" then
		    return "<>"
		    
		  else
		    return theOp
		    
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub updateFieldsFromPred()
		  '
		  ' a filter removes some records, but passes all fields
		  '
		  
		  dim n as integer
		  dim s as string
		  if prevDataQueryItem<>nil then
		    
		    
		    '
		    ' obtain field type of selected fields
		    '
		    for i as integer = 0 to ubound(sField1)
		      sField1Type(i) = prevDataQueryItem.getKeyType(sField1(i))
		      
		    next
		    
		    
		    
		    '
		    ' obtain field type of selected fields
		    '
		    for i as integer = 0 to ubound(sField2)
		      sField2Type(i) = prevDataQueryItem.getKeyType(sField2(i))
		      
		    next
		    
		    
		    ' move all key fields
		    '
		    self.keyFields.RemoveAll
		    
		    for each field as clDataQueryFieldInfo in prevDataQueryItem.keyFields
		      self.keyFields.Add(field.Clone)
		      
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
		sConst(maxItems) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		sField1(maxItems) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		sField1Type(maxItems) As InternalFieldTypes
	#tag EndProperty

	#tag Property, Flags = &h0
		sField2(maxItems) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		sField2Type(maxItems) As InternalFieldTypes
	#tag EndProperty

	#tag Property, Flags = &h0
		sOper(maxItems) As string
	#tag EndProperty


	#tag Constant, Name = cJSONTagConstant, Type = String, Dynamic = False, Default = \"constant", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cJSONTagField1, Type = String, Dynamic = False, Default = \"field1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cJSONTagField2, Type = String, Dynamic = False, Default = \"field2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cJSONTagIndex, Type = String, Dynamic = False, Default = \"index", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cJSONTagOperator, Type = String, Dynamic = False, Default = \"op", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cOperatorIN, Type = String, Dynamic = False, Default = \"in", Scope = Public
	#tag EndConstant

	#tag Constant, Name = maxItems, Type = Integer, Dynamic = False, Default = \"6", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
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
