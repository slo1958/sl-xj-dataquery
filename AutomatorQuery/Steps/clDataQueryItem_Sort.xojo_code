#tag Class
Protected Class clDataQueryItem_Sort
Inherits clDataQueryItem_Generic
	#tag Method, Flags = &h0
		Sub Constructor()
		  var i  as integer
		  
		  Super.constructor(StepTypes.Sort)
		  
		  for i=0 to maxItems
		    binuse(i)=false
		  next
		  
		  nextItem=-1
		  recLimit=0
		  
		End Sub
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

	#tag Method, Flags = &h1
		Protected Function getSql() As string
		  dim s as string
		  dim sSource as string
		  dim sPostFix as string
		  var i  as integer
		  dim ssep as string
		  
		  if prevCalcStep<>nil then
		    
		    sSource=prevCalcStep.getSql
		    sPostFix=prevCalcStep.fieldPostFix
		    
		  end if
		  
		  if ssource<>"" then
		    s="select "
		    
		    if recLimit>0 then
		      s=s+" top "+str(reclimit)+"    "
		    end if
		    
		    ssep=""
		    
		    for i=1 to ubound(prevCalcStep.keyFields)
		      s=s+ssep
		      s=s+prevCalcStep.keyFields(i)+"_"+sPostFix+" as "+prevCalcStep.keyFields(i)+"_"+fieldPostFix
		      ssep=","
		    next
		    
		    for i=1 to ubound(prevCalcStep.valueFields)
		      s=s+ssep
		      s=s+prevCalcStep.valueFields(i)+"_"+sPostFix+" as "+prevCalcStep.valueFields(i)+"_"+fieldPostFix
		      ssep=","
		    next
		    
		    
		    s=s+" from ("+ssource+")"
		    
		    ssep=" order by "
		    
		    for i=0 to maxitems
		      if sfield1(i)<>"" then
		        s=s+ssep+sfield1(i)+"_"+sPostFix+"  "+sfields(i)
		        ssep=","
		      end if
		    next
		    
		  else
		    s=""
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
		  return sort_38_38
		  
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
		  case 10
		    nextItem=nextItem+1
		    
		    
		  case 12
		    sfield1(nextItem)=s
		    binuse(nextitem)=true
		    
		  case 14
		    sfieldS(nextItem)=s
		    binuse(nextitem)=true
		    
		  case 16
		    recLimit=val(s)
		    
		  case else
		  end select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub saveMyData(theOutput as textoutputStream)
		  var i  as integer
		  
		  for i=0 to maxItems
		    if bInUse(i) then
		      theOutput.writeline "50;10;xx"
		      theOutput.writeline "50;12;"+sfield1(i)
		      theOutput.writeline "50;14;"+sfieldS(i)
		      theOutput.writeline "50;16;"+str(reclimit)
		    end if
		  next
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowConfigDialog()
		   
		  wndCalcStep_sort.showme me
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub updateFieldsFromPred()
		  '
		  ' passes all fields (key, values)
		  '
		  var i  as integer
		  var j  as integer
		  dim n as integer
		  dim s as string
		  
		  if prevCalcStep<>nil then
		    
		    '
		    ' obtain field type of selected fields
		    '
		    for i=0 to ubound(sField1)
		      s=sField1(i)
		      
		      for j=1 to ubound(prevCalcStep.keyFields)
		        if prevCalcStep.keyFields(j)=s then
		          sField1Type(i)=prevCalcStep.keyFieldType(j)
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
		    
		    n=ubound(prevCalcStep.valueFields)
		    redim valueFields(n)
		    
		    for i=1 to n
		      valueFields(i)=prevCalcStep.valueFields(i)
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
