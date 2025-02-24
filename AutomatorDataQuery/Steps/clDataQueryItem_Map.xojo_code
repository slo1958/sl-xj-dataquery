#tag Class
Protected Class clDataQueryItem_Map
Inherits clDataQueryItem
	#tag Method, Flags = &h0
		Sub Constructor(SourceJSON as JSONItem)
		  // Calling the overridden superclass constructor.
		  
		  Super.Constructor(SourceJSON)
		  
		  
		  redim inputList(0)
		  redim Outputlist(0)
		  
		  nextItem=0
		  
		  if SourceJSON = nil then Return
		  
		  var jItems as    JSONItem = SourceJSON.Value(cJSONTagItems)
		  
		  if jitems.IsArray then
		    for i as integer = 0 to jItems.LastRowIndex
		      var jItem as JSONItem = jitems.ChildAt(i)
		      
		      var index as integer = jitem.value(cJSONTagIndex) 
		      
		      if index > InputList.LastIndex then
		        Redim InputList(index)
		        redim OutputList(index)
		        
		      end if
		      
		      InputList(index) = jitem.Value(cJSONTagInput)
		      OutputList(index) = jItem.Value(cJSONTagOutput) 
		      
		    next
		    
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetConfigJSON() As JSONItem
		  // Calling the overridden superclass method.
		  
		  
		  var jMaster as  JSONItem = super.GetConfigJSON()
		  
		  var jItems as new  JSONItem
		  
		  for i as integer = 1 to ubound(InputList)
		    
		    var jItem as new JSONItem
		    jitem.value(cJSONTagIndex) = i
		    jitem.Value(cJSONTagInput) = InputList(i)
		    jItem.Value(cJSONTagOutput) = OutputList(i)
		    
		    jitems.Add(jitem)
		    
		    
		  next
		  jMaster.Value(cJSONTagItems) = jitems
		  
		  return jMaster
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getSql(IsLastStep as boolean) As string
		  dim sSource as string
		  dim sPostFix as string
		  
		  dim ssep as string
		  
		  dim s as string
		  
		  if prevDataQueryItem=nil then
		    sSource=""
		    sPostFix=""
		  else
		    sSource=prevDataQueryItem.getSql(false)
		    sPostFix=prevDataQueryItem.fieldPostFix
		  end if
		  
		  s="select  "
		  ssep=""
		  
		  for i as integer = 0 to keyFields.LastIndex
		    if keyFields(i) <> nil then
		      s=s+ssep+keyFields(i).Name +"_"+sPostFix+" as "+keyFields(i).Name   + PostFixStr(IsLastStep)
		      ssep=","
		      
		    end if
		  next
		  
		  for i as integer = 1 to UBound(InputList)
		    if OutputList(i)<>"" then
		      s=s+ssep+InputList(i)+"_"+sPostFix+" as "+ OutputList(i) + PostFixStr(IsLastStep)
		    end if
		  next
		  
		  
		  
		  s=s+" FROM (" + chr(13) + chr(13) + sSource + chr(13) +  ")" + chr(13) 
		  
		  return s
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getTextItem(theItem as integer) As string
		  dim n as integer
		  dim s as string
		  
		  n=0
		  s=""
		  
		  for i as integer = 1 to ubound(OutputList)
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
		Function GetTypeAsEnum() As StepTypes
		  
		  return StepTypes.Map
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function MyImage() As picture
		  return map_38_38
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowConfigDialog()
		  
		  wndDataQueryItem_map.ShowMe me 
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub updateFieldsFromPred()
		  
		  var j as integer
		  dim n as integer
		  dim m as integer
		  dim b as boolean
		  
		  dim looplimit as integer
		  
		  if prevDataQueryItem=nil then
		    
		  else
		    
		    ' move all key fields
		    '
		    self.keyFields.RemoveAll
		    
		    for each field as clDataQueryFieldInfo in prevDataQueryItem.keyFields
		      self.keyFields.Add(field.Clone)
		      
		    next
		    
		    '
		    '  add new data fields
		    '
		    n=UBound(prevDataQueryItem.valueFields)
		    for i as integer = 1 to n
		      m=ubound(InputList)
		      b=false
		      for j=1 to m
		        if prevDataQueryItem.valueFields(i)=inputList(j) then b=true
		        
		      next
		      
		      if not b then
		        InputList.add(prevDataQueryItem.valueFields(i))
		        OutputList.Add(prevDataQueryItem.valueFields(i))
		        
		      end if
		      
		    next
		    
		    '
		    ' remove value fields that no longer exist
		    '
		    var index as integer = 1
		    
		    looplimit=100
		    
		    while index<=ubound(inputlist) and looplimit>0
		      b=false 
		      
		      for j=1 to ubound(prevDataQueryItem.valueFields)
		        
		        if prevDataQueryItem.valueFields(j)=InputList(index) then b=true
		        
		      next
		      
		      if b then
		        index = index + 1
		      else
		        InputList.Remove index
		        OutputList.remove index
		      end if
		      looplimit=looplimit-1
		    wend
		    
		    '
		    ' update output value list
		    '
		    m=ubound(InputList)
		    redim valueFields(0)
		    
		    for i as integer = 1 to m
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


	#tag Constant, Name = cJSONTagIndex, Type = String, Dynamic = False, Default = \"index", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cJSONTagInput, Type = String, Dynamic = False, Default = \"input", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cJSONTagOutput, Type = String, Dynamic = False, Default = \"Output", Scope = Public
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
