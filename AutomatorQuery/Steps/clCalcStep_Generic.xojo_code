#tag Class
Protected Class clCalcStep_Generic
Inherits clAutomatorItem
	#tag Method, Flags = &h0
		Function anyInChain(theExpectedType as integer) As boolean
		  
		  if prevCalcStep=nil then
		    return (ItemType=theExpectedType)
		  else
		    return (ItemType=theExpectedType) or prevCalcStep.anyInChain(theExpectedType)
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  
		  prevCalcStep=nil
		  
		  numSeq=-1
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getFieldType(theField as string) As integer
		  dim k as integer
		  
		  k=getKeyType(theField)
		  
		  if k<0 then k=getValueType(theField)
		  
		  return k
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getKeyType(theKey as string) As integer
		  dim i as integer
		  dim j as integer
		  
		  i=1 
		  j=-1
		  while (i<=ubound(keyFields)) and (j<0)
		    if uppercase(keyFields(i))=uppercase(thekey) then j=keyFieldType(i)
		    
		    i=i+1
		  wend
		  
		  return j
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getSql() As string
		  return ""
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getTextItem(theItem as integer) As string
		  return ""
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetType() As string
		  dim s as string
		  
		  select case ItemType
		    
		  case 100
		    s="Generic"
		    
		  case 200
		    s="Filter"
		    
		  case 300
		    s="Group/Split"
		    
		  case 400
		    s="Start"
		    
		  case 500
		    s="Sort"
		    
		  case 600
		    s="Calc"
		    
		  case 700
		    s="Pivot"
		    
		  case 800
		    s="Map"
		  case else
		    s="?"
		  end Select
		  
		  return s
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getValueType(theField as string) As integer
		  
		  dim i as integer
		  dim j as integer
		  
		  i=1 
		  j=-1
		  while (i<=ubound(valueFields)) and (j<0)
		    if uppercase(valueFields(i))=uppercase(theField) then j=30
		    i=i+1
		  wend
		  
		  return j
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function myImage() As picture
		  dim p as  Picture
		  p=New Picture(38,38,Screen(0).Depth)
		  
		  p.Graphics.DrawRect 0,0,37,37
		  return p
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function myType() As integer
		  return 100
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Name() As string
		  return title
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Name(assigns s as string)
		  Title=s
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function numSeq() As integer
		  Return intNumSeq
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub numSeq(assigns n as integer)
		  intNumSeq=n
		  fieldPostFix=chr(asc("A")-1+n)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Open()
		  MessageBox( "Open operation not allowed on generic object")
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub processLoad(theLine as string)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ResetData()
		  redim keyFields(0)
		  redim valueFields(0)
		  
		  keyFields(0)=""
		  valueFields(0)=""
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub saveMyData(theOutput as textoutputStream)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub saveToTextFile(theTextFile as textoutputStream)
		  dim i as integer
		  
		  theTextFile.writeline "4;"+str(ubound(keyFields))
		  for i=1 to ubound(keyFields)
		    theTextFile.writeline "5;"+keyFields(i)
		  next
		  
		  theTextFile.writeline "6;"+str(ubound(valueFields))
		  for i=1 to ubound(valueFields)
		    theTextFile.writeline "7;"+valueFields(i)
		  next
		  
		  'if nextCalcStep<>nil then
		  'theTextFile.writeline "9;"+nextCalcStep.name
		  'end if
		  
		  'theTextFile.writeline "10;"+str(IntxCenter)
		  'theTextFile.writeline "11;"+str(ypos)
		  
		  saveMyData theTextFile
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub updateFieldsFromPred()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function validateChain() As string
		  if prevCalcStep=nil then
		    return "OK"
		  else
		    return prevCalcStep.validateChain
		  end if
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		dataFlowError As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		fieldPostFix As string
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected intNumSeq As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		keyFields(0) As string
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected keyFieldType(0) As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		prevCalcStep As clCalcStep_generic
	#tag EndProperty

	#tag Property, Flags = &h0
		tmp As string
	#tag EndProperty

	#tag Property, Flags = &h0
		valueFields(0) As string
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
	#tag EndViewBehavior
End Class
#tag EndClass
