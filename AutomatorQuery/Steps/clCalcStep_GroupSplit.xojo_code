#tag Class
Protected Class clCalcStep_GroupSplit
Inherits clCalcStep_Generic
	#tag Method, Flags = &h0
		Sub Constructor()
		  dim i as integer
		  
		  for i=0 to maxItems
		    binuse(i)=false
		  next
		  
		  nextItem=-1
		  
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

	#tag Method, Flags = &h0
		Function getSql() As String
		  dim sSource as string
		  dim sPostFix as string
		  dim i as integer
		  dim n as integer
		  dim s as string
		  dim sSep as string
		  dim sGroupBy as string
		  
		  if prevCalcStep<>nil then 
		    sSource=prevCalcStep.getSql
		    sPostFix=prevCalcStep.fieldPostFix
		  else
		    ssource=""
		    sPostFix=""
		  end if
		  
		  s=""
		  
		  if sPostFix<>"" then
		    
		    s="select  "   
		    sSep=""
		    
		    for i=0 to ubound(sField1)
		      if bInUse(i) then
		        s=s+sSep + sField1(i)+"_"+sPostFix +"  as "+sField1(i)+"_"+fieldPostFix
		        sSep=","
		      end if
		    next
		    
		    for i=1 to ubound(valueFields)
		      s=s+ssep+"sum(" + valueFields(i)+"_"+sPostFix +") as "+valueFields(i)+"_"+fieldPostFix
		      sSep=","
		    next
		    
		    s=s+"  from ("+sSource+")"
		    
		    sGroupBy=" group by "
		    ssep=""
		    
		    for i=0 to ubound(sField1)
		      if bInUse(i) then
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
		  dim i as integer
		  dim j as integer
		  
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
		Function myType() As integer
		  return 300 
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Open()
		  
		  wndCalcStep_GroupSplit.showme me
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub processLoad(theLine as string)
		  dim m as integer
		  dim s as string
		  dim i as integer
		  
		  m=val(NthField(theline,";",1))
		  i=instr(theLine,";")
		  s=trim(mid(theLine,i+1,9999))
		  
		  select case m
		  case 10
		    nextItem=nextItem+1
		    
		    
		  case 12
		    sfield1(nextItem)=s
		    binuse(nextitem)=true
		    
		  case else
		  end select
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub saveMyData(theOutput as textoutputStream)
		  dim i as integer
		  
		  for i=0 to maxItems
		    if bInUse(i) then
		      theOutput.writeline "50;10;xx"
		      theOutput.writeline "50;12;"+sfield1(i)
		    end if
		  next
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub updateFieldsFromPred()
		  '
		  ' a group/split   but passes all value fields and only selected key fields
		  '
		  dim i as integer
		  dim j as integer
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
		sField1(maxItems) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		sField1Type(maxItems) As integer
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
