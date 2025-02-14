#tag Class
Protected Class clDataQueryItem_Calc
Inherits clDataQueryItem_Generic
	#tag Method, Flags = &h0
		Sub Constructor()
		  
		  Super.constructor(StepTypes.Calculate)
		  
		  
		  Nextitem=0
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetConfigJSON() As JSONItem
		  
		  
		  var j1 as new JSONItem
		  
		  var jFormula as new JSONItem
		  var jOutput as new JSONItem
		  
		  
		  for i as integer = 1 to ubound(formula)
		    jFormula.Add(formula(i))
		    jOutput.Add(OutputFields(i))
		    
		  next
		  
		  j1.Value("formula") = jFormula
		  j1.Value("output") = jOutput
		  
		  return j1
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getSql() As string
		  var i  as integer
		  dim n as integer
		  dim s as string
		  
		  dim sTmp as string
		  
		  dim sSource as string
		  dim sPostfix as string
		  
		  dim sdel as string
		  
		  if prevCalcStep=nil then
		    s=""
		    
		  else
		    
		    ssource=prevCalcStep.getSql
		    sPostfix=prevCalcStep.fieldPostFix
		    
		    
		    s="select "
		    sdel=""
		    for i=1 to ubound(prevCalcStep.keyFields)
		      s=s+sdel+ prevCalcStep.keyFields(i)+"_"+spostfix+" as "+prevCalcStep.keyFields(i)+"_"+fieldPostFix
		      sdel=","
		    next
		    
		    for i=1 to ubound(prevCalcStep.valueFields)
		      s=s+sdel + prevCalcStep.valueFields(i)+"_"+spostfix+" as "+prevCalcStep.valueFields(i)+"_"+fieldPostFix
		      sdel=","
		    next
		    
		    for i=1 to ubound(Formula)
		      if (formula(i)<>"") and (OutputFields(i)<>"") then
		        stmp=formula(i)
		        stmp=replaceAll(stmp,"$","_"+sPostfix)
		        s=s+sdel+"("+stmp+") as "+OutputFields(i)+"_"+fieldPostFix
		        sdel=","
		      end if
		    next
		    
		    s=s+"  from ("+ssource+")"
		    
		    return s
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getTextItem(theItem as integer) As string
		  
		  if (theItem<4) or (ubound(OutputFields)<=4) then
		    if theitem > ubound(OutputFields) then
		      return ""
		    else
		      return OutputFields(theItem)+" given by "+Formula(theitem)
		    end if
		  else
		    if theItem=4 and uBound(OutputFields)>4 then
		      return "..."
		    else
		      return ""
		    end if
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
		  
		  wndCalcStep_Calc.showme me
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub updateFieldsFromPred()
		  var i  as integer
		  dim n as integer
		  dim m as integer
		  
		  if prevCalcStep=nil then
		    
		  else
		    '
		    ' move all key fields
		    '
		    n=ubound(prevCalcStep.keyFields)
		    
		    redim keyFields(n)
		    redim keyFieldType(n)
		    
		    for i=1 to n
		      keyFields(i)=prevCalcStep.keyFields(i)
		      keyFieldType(i)=prevCalcStep.keyFieldType(i)
		    next
		    '
		    ' move all value fields
		    '
		    n=ubound(prevCalcStep.valueFields)
		    m=ubound(OutputFields)
		    
		    redim valueFields(n+m)
		    
		    for i=1 to n
		      valueFields(i)=prevCalcStep.valueFields(i)
		    next
		    
		    for i=1 to m
		      valueFields(n+i)=OutputFields(i)
		    next
		    
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Formula(0) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		nextItem As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		OutputFields(0) As string
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="yBase"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="yEnd"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Title"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
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
			Name="ItemType"
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
