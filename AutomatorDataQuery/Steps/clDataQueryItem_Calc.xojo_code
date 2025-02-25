#tag Class
Protected Class clDataQueryItem_Calc
Inherits clDataQueryItem
	#tag Method, Flags = &h0
		Sub Constructor(SourceJSON as JSONItem)
		  // Calling the overridden superclass constructor.
		  
		  Super.constructor(SourceJSON)
		  
		  Nextitem=0
		  
		  // processConfigJSON is called by the super constructor if SourceJSON is not nil
		  
		  return
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetConfigJSON() As JSONItem
		  
		  
		  var jMaster as  JSONItem = super.GetConfigJSON()
		  
		  var jItems as new  JSONItem
		  
		  for i as integer = 1 to ubound(formula)
		    var jItem as new JSONItem
		    jitem.value(cJSONTagIndex) = i
		    jitem.value(cJSONTagFormula) = formula(i)
		    jitem.value(cJSONTagOutput) = OutputFields(i)
		    jitem.Value(cJSONTagIsDimension) = IsDimension(i)
		    
		    jItems.Add(jItem)
		    
		  next
		  
		  jMaster.Value(cJSONTagItems) = jitems
		  
		  return jMaster
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getSql(IsLastStep as boolean) As string
		  
		  dim s as string
		  
		  dim sTmp as string
		  
		  dim sSource as string
		  dim sPostfix as string
		  
		  dim sdel as string
		  
		  if prevDataQueryItem=nil then
		    s=""
		    
		  else
		    
		    ssource=prevDataQueryItem.getSql(false)
		    sPostfix=prevDataQueryItem.fieldPostFix
		    
		    
		    s="select "
		    sdel=""
		    for i as integer = 0 to ubound(prevDataQueryItem.keyFields)
		      if prevDataQueryItem.keyFields(i) <> nil then 
		        s=s+sdel+ prevDataQueryItem.keyFields(i).Name +"_"+spostfix+" as "+prevDataQueryItem.keyFields(i).Name   + PostFixStr(IsLastStep)
		        sdel=","
		        
		      end if
		    next
		    
		    for i as integer = 1 to ubound(prevDataQueryItem.valueFields)
		      s=s+sdel + prevDataQueryItem.valueFields(i)+"_"+spostfix+" as "+prevDataQueryItem.valueFields(i) + PostFixStr(IsLastStep)
		      sdel=","
		    next
		    
		    for i as integer = 1 to ubound(Formula)
		      if (formula(i)<>"") and (OutputFields(i)<>"") then
		        stmp=formula(i)
		        stmp=replaceAll(stmp,"$","_"+sPostfix)
		        s=s+sdel+"("+stmp+") as "+OutputFields(i)  + PostFixStr(IsLastStep)
		        sdel=","
		      end if
		    next
		    
		    s=s+"  FROM (" + chr(13) + chr(13) + sSource + chr(13) +  ")" + chr(13) 
		    
		    return s
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getTextItem(theItem as integer) As string
		  if theItem >= 0 and theItem <= OutputFields.LastIndex then
		    
		    if theitem > ubound(OutputFields) then
		      return ""
		      
		    elseif IsDimension(theItem) then
		      return OutputFields(theItem)+" given by "+Formula(theitem) + " as dimension"
		      
		    else
		      return OutputFields(theItem)+" given by "+Formula(theitem)
		      
		    end if
		    
		  else
		    return ""
		    
		  end if
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetTypeAsEnum() As StepTypes
		  
		  return StepTypes.Calculate
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function myImage() As picture
		  return Calc_38_38
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ProcessConfigJSON(SourceJSON as JSONItem)
		  // Calling the overridden superclass method.
		  Super.ProcessConfigJSON(SourceJSON)
		  
		  var jItems as  JSONItem = SourceJSON.Value(cJSONTagItems)
		  
		  if jitems.IsArray then
		    for i as integer = 0 to jItems.LastRowIndex
		      var jitem as JSONItem = jitems.childat(i)
		      
		      var index as integer = jitem.value(cJSONTagIndex)
		      
		      if index >Formula.LastIndex then 
		        redim Formula(index)
		        redim OutputFields(index)
		        redim IsDimension(Index)
		        
		      end if
		      
		      if index > nextItem then nextItem = index
		      
		      formula(Index) = jitem.value(cJSONTagFormula)
		      OutputFields(Index) = jitem.value(cJSONTagOutput)
		      IsDimension(Index) = jitem.Value(cJSONTagIsDimension) 
		      
		    next
		    
		    
		  end if
		  
		  return
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowConfigDialog()
		  
		  wndDataQueryItem_Calc.showme me
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub updateFieldsFromPred()
		  
		  
		  if prevDataQueryItem=nil then
		    
		  else
		    
		    '
		    ' move all key fields
		    '
		    self.keyFields.RemoveAll
		    
		    for each field as clDataQueryFieldInfo in prevDataQueryItem.keyFields
		      self.keyFields.Add(field.Clone)
		      
		    next
		    
		    '
		    ' move all value fields
		    ' 
		    redim valueFields(0)
		    
		    for i as integer =1 to prevDataQueryItem.valueFields.LastIndex
		      valueFields.add(prevDataQueryItem.valueFields(i))
		      
		    next
		    
		    for i as integer = 1 to OutputFields.LastIndex
		      if IsDimension(i) then
		        self.keyFields.add(new clDataQueryFieldInfo(OutputFields(i), InternalFieldTypes.Double))
		        
		      else
		        valueFields.Add(OutputFields(i))
		        
		      end if
		    next
		    
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Formula(0) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		IsDimension(0) As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		nextItem As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		OutputFields(0) As string
	#tag EndProperty


	#tag Constant, Name = cJSONTagFormula, Type = String, Dynamic = False, Default = \"formula", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cJSONTagIndex, Type = String, Dynamic = False, Default = \"index", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cJSONTagIsDimension, Type = String, Dynamic = False, Default = \"dimension", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cJSONTagOutput, Type = String, Dynamic = False, Default = \"output", Scope = Public
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
