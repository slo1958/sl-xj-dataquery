#tag Class
Protected Class clDataQueryItem_Map
Inherits clDataQueryItem_Generic
	#tag Method, Flags = &h0
		Sub Constructor()
		  
		  Super.constructor(StepTypes.Map)
		  
		  redim inputList(0)
		  redim Outputlist(0)
		  
		  nextItem=0
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getSql() As string
		  dim sSource as string
		  dim sPostFix as string
		  var i  as integer
		  dim ssep as string
		  
		  dim s as string
		  
		  if prevCalcStep=nil then
		    sSource=""
		    sPostFix=""
		  else
		    sSource=prevCalcStep.getSql
		    sPostFix=prevCalcStep.fieldPostFix
		  end if
		  
		  s="select  "
		  ssep=""
		  
		  for i=1 to keyFields.LastIndex
		    s=s+ssep+keyFields(i)+"_"+sPostFix+" as "+keyFields(i)+"_" + fieldPostFix
		    ssep=","
		  next
		  
		  for i=1 to UBound(InputList)
		    if OutputList(i)<>"" then
		      s=s+ssep+InputList(i)+"_"+sPostFix+" as "+ OutputList(i)+"_"+fieldPostFix
		    end if
		  next
		  
		  
		  
		  s=s+" from ("+ssource+")"
		  
		  return s
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getTextItem(theItem as integer) As string
		  var i  as integer
		  dim n as integer
		  dim s as string
		  
		  n=0
		  s=""
		  
		  for i=1 to ubound(OutputList)
		    if OutputList(i)<>"" then
		      n=n+1
		      if n=theItem then s=OutputList(i)
		    end if
		  next
		  
		  if theItem=4 and n>4 then s="..."
		  
		  return s
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MyImage() As picture
		  return map_38_38
		  
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
		    redim inputList(nextItem)
		    redim OutputList(nextItem)
		    
		  case 11
		    inputList(nextItem)=s
		    
		  case 12
		    outputlist(nextItem)=s
		    
		    
		  case else
		  end select
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub saveMyData(theOutput as textoutputStream)
		  var i  as integer
		  
		  for i=1 to ubound(InputList)
		    theOutput.writeline "50;10;xx"
		    theOutput.writeline "50;11;"+InputList(i)
		    theOutput.writeline "50;12;"+OutputList(i)
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowConfigDialog()
		   
		  wndCalcStep_map.ShowMe me 
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub updateFieldsFromPred()
		  var i ,j as integer
		  dim n as integer
		  dim m as integer
		  dim b as boolean
		  
		  dim looplimit as integer
		  
		  if prevCalcStep=nil then
		    
		  else
		    '
		    ' key fields are moved 'as is'
		    '
		    n=ubound(prevCalcStep.keyFields)
		    redim keyFields(n)
		    redim keyFieldType(n)
		    
		    for i=1 to n
		      keyfields(i)=prevCalcStep.keyFields(i)
		      keyFieldType(i)=prevCalcStep.keyFieldType(i)
		    next
		    
		    '
		    '  add new data fields
		    '
		    n=UBound(prevCalcStep.valueFields)
		    for i=1 to n
		      m=ubound(InputList)
		      b=false
		      for j=1 to m
		        if prevCalcStep.valueFields(i)=inputList(j) then b=true
		        
		      next
		      
		      if not b then
		        m=m+1
		        redim inputList(m)
		        InputList(m)=prevCalcStep.valueFields(i)
		        redim OutputList(m)
		        OutputList(m)=prevCalcStep.valueFields(i)
		      end if
		      
		    next
		    
		    '
		    ' remove value fields that no longer exist
		    '
		    i=1
		    
		    looplimit=100
		    
		    while i<=ubound(inputlist) and looplimit>0
		      b=false 
		      
		      for j=1 to ubound(prevCalcStep.valueFields)
		        
		        if prevCalcStep.valueFields(j)=InputList(i) then b=true
		        
		      next
		      
		      if b then
		        i=i+1
		      else
		        InputList.Remove i
		        OutputList.remove i
		      end if
		      looplimit=looplimit-1
		    wend
		    
		    '
		    ' update output value list
		    '
		    m=ubound(InputList)
		    redim valueFields(0)
		    
		    for i=1 to m
		      if OutputList(i)<>"" then
		        n=ubound(valueFields)+1
		        redim valueFields(n)
		        valueFields(n)=OutputList(i)
		      end if
		    next
		    
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		InputList(0) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		nextItem As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		OutputList(0) As string
	#tag EndProperty


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
