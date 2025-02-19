#tag Class
Protected Class clDataQueryItem_Calc
Inherits clDataQueryItem
	#tag Method, Flags = &h0
		Sub Constructor()
		  
		  Super.constructor(StepTypes.Calculate)
		  
		  
		  Nextitem=0
		  
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
		  var i  as integer
		  dim n as integer
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
		    for i=1 to ubound(prevDataQueryItem.keyFields)
		      s=s+sdel+ prevDataQueryItem.keyFields(i)+"_"+spostfix+" as "+prevDataQueryItem.keyFields(i)  + PostFixStr(IsLastStep)
		      sdel=","
		    next
		    
		    for i=1 to ubound(prevDataQueryItem.valueFields)
		      s=s+sdel + prevDataQueryItem.valueFields(i)+"_"+spostfix+" as "+prevDataQueryItem.valueFields(i) + PostFixStr(IsLastStep)
		      sdel=","
		    next
		    
		    for i=1 to ubound(Formula)
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
		Function myImage() As picture
		  return Calc_38_38
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub processLoadedJSON(theLine as string)
		  dim m as integer
		  dim s as string
		  var i  as integer
		  
		  m=val(NthField(theline,";",1))
		  i=instr(theLine,";")
		  s=trim(mid(theLine,i+1,9999))
		  
		  select case m
		  case 11
		    nextItem=ubound(Formula)+1
		    redim Formula(nextItem)
		    redim OutputFields(nextItem)
		    
		  case 21
		    formula(nextItem)=s
		    
		  case 25
		    outputfields(nextItem)=s
		    
		    
		  case else
		  end select
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowConfigDialog()
		  
		  wndDataQueryItem_Calc.showme me
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub updateFieldsFromPred()
		   
		  // 
		  // if prevDataQueryItem=nil then
		  // 
		  // else
		  // '
		  // ' move all key fields
		  // '
		  // n=ubound(prevDataQueryItem.keyFields)
		  // 
		  // redim keyFields(n)
		  // redim keyFieldType(n)
		  // 
		  // for i=1 to n
		  // keyFields(i)=prevDataQueryItem.keyFields(i)
		  // keyFieldType(i)=prevDataQueryItem.keyFieldType(i)
		  // next
		  // '
		  // ' move all value fields
		  // '
		  // n=ubound(prevDataQueryItem.valueFields)
		  // m=ubound(OutputFields)
		  // 
		  // redim valueFields(n+m)
		  // 
		  // for i=1 to n
		  // valueFields(i)=prevDataQueryItem.valueFields(i)
		  // next
		  // 
		  // for i=1 to m
		  // 
		  // valueFields(n+i)=OutputFields(i)
		  // next
		  // 
		  // end if
		  
		  
		  
		  if prevDataQueryItem=nil then
		    
		  else
		    '
		    ' move all key fields
		    '
		     
		    
		    redim keyFields(0)
		    redim keyFieldType(0)
		    
		    
		    for i as integer = 1 to prevDataQueryItem.keyFields.LastIndex
		      keyFields.Add( prevDataQueryItem.keyFields(i))
		      keyFieldType.Add(prevDataQueryItem.keyFieldType(i))
		      
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
		        keyFields.add(OutputFields(i))
		        keyFieldType.add( InternalFieldTypes.Double) 
		        
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
			Name="ID"
			Visible=false
			Group="Behavior"
			InitialValue=""
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
