#tag Class
Protected Class clDataQueryItem
Inherits clAutomatorItem
	#tag Method, Flags = &h0
		Function anyInChain(theExpectedType as StepTypes) As boolean
		  //
		  // Check the chain contains one step of the given type
		  //
		  
		  if prevDataQueryItem=nil then
		    return (self.GetTypeAsEnum=theExpectedType)
		    
		  else
		    return (self.GetTypeAsEnum=theExpectedType) or prevDataQueryItem.anyInChain(theExpectedType)
		    
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(SourceJSON as JSONItem)
		  super.Constructor(SourceJSON)
		  
		  prevDataQueryItem=nil
		  
		  if SourceJSON <> nil then self.ProcessConfigJSON(SourceJSON)
		  
		  return
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetConfigJSON() As JSONItem
		  
		  var jMaster as new JSONItem
		  
		  jMaster.Value(cJSONTagName) = self.Name
		  jMaster.Value(cJSONTagInternalStepType) = self.GetTypeAsString
		  
		  
		  // save internals for debug purposes
		  
		  var jitems as new JSONItem
		  
		  
		  
		  
		  for i as integer = 1 to keyFields.LastIndex
		    var jitem as new JSONItem
		    jitem.value(cJSONTagDebugFieldType) = cJSONTagDebugFieldTypeKey
		    jitem.value(cJSONTagDebugFieldIndex) = str(i)
		    jitem.value(cJSONTagDebugFieldName) = keyFields(i).Name
		    
		    jitems.add(jitem)
		    
		  next
		  
		  for i as integer = 1  to ubound(valueFields)
		    var jitem as new JSONItem
		    jitem.value(cJSONTagDebugFieldType) = cJSONTagDebugFieldTypeValue
		    jitem.value(cJSONTagDebugFieldIndex) = str(i)
		    jitem.value(cJSONTagDebugFieldName) = valueFields(i)
		    
		    jitems.add(jitem)
		    
		  next
		  
		  jMaster.value(cJSONTagDebugListFields) = jitems
		  
		  return jMaster
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getFieldType(theField as string) As InternalFieldTypes
		  dim k as InternalFieldTypes
		  
		  k = getKeyType(theField)
		  
		  if k = InternalFieldTypes.Undefined then k = getValueType(theField)
		  
		  return k
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getKeyType(theKey as string) As InternalFieldTypes
		  
		  for each field as clDataQueryFieldInfo in self.keyFields
		    if field.Name.Uppercase = theKey.Uppercase then return field.Type
		    
		  next
		  
		  Return  InternalFieldTypes.Undefined
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getSql(IsLastStep as boolean) As string
		  return ""
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getTextItem(theItem as integer) As string
		  return ""
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetTypeAsEnum() As StepTypes
		  
		  return StepTypes.Generic
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetTypeAsString() As string
		  
		  return clDataQueryFlow.StepTypeToLabel(self.GetTypeAsEnum)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getValueType(theField as string) As InternalFieldTypes
		  
		  var i  as integer
		  var j  as InternalFieldTypes = InternalFieldTypes.Undefined
		  
		  i=1 
		  j = InternalFieldTypes.Undefined
		  while (i<=ubound(valueFields)) and (j =  InternalFieldTypes.Undefined)
		    if uppercase(valueFields(i))=uppercase(theField) then j = InternalFieldTypes.Double
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
		Function Name() As string
		  
		  return super.getTitle
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Name(assigns s as string)
		  
		  super.SetTitle(s)
		  
		  
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
		  
		  fieldPostFix = str(n)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Open()
		  ShowConfigDialog
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PostFixStr(IsLastStep as Boolean) As string
		  if  IsLastStep then 
		    return ""
		    
		  else
		    return "_"+fieldPostFix
		    
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ProcessConfigJSON(SourceJSON as JSONItem)
		  
		  var ItemTitle as string = SourceJSON.Value(cJSONTagName)
		  
		  Self.SetTitle(ItemTitle)
		  
		  return
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ResetData()
		  
		  redim valueFields(0)
		  
		  self.keyFields.RemoveAll
		  
		  valueFields(0)=""
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowConfigDialog()
		  MessageBox( "Open operation not allowed on generic object")
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdatedFromConfigDialog()
		  
		  if self.VisualSupport = nil then Return
		  
		  self.VisualSupport.SetTitle(self.Name)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub updateFieldsFromPred()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function validateChain() As string
		  if prevDataQueryItem=nil then
		    return "OK"
		  else
		    return prevDataQueryItem.validateChain
		  end if
		  
		End Function
	#tag EndMethod


	#tag Note, Name = GetConfigJSON template
		
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
		
		
		
	#tag EndNote


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
		keyFields() As clDataQueryFieldInfo
	#tag EndProperty

	#tag Property, Flags = &h0
		prevDataQueryItem As clDataQueryItem
	#tag EndProperty

	#tag Property, Flags = &h0
		valueFields(0) As string
	#tag EndProperty


	#tag Constant, Name = cJSONTagDebugFieldIndex, Type = String, Dynamic = False, Default = \"index", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cJSONTagDebugFieldName, Type = String, Dynamic = True, Default = \"name", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cJSONTagDebugFieldType, Type = String, Dynamic = False, Default = \"fieldtype", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cJSONTagDebugFieldTypeKey, Type = String, Dynamic = False, Default = \"key", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cJSONTagDebugFieldTypeValue, Type = String, Dynamic = False, Default = \"value", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cJSONTagDebugListFields, Type = String, Dynamic = False, Default = \"internals", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cJSONTagInternalStepType, Type = String, Dynamic = False, Default = \"type", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cJSONTagItems, Type = String, Dynamic = False, Default = \"fields", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cJSONTagName, Type = String, Dynamic = False, Default = \"name", Scope = Public
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
	#tag EndViewBehavior
End Class
#tag EndClass
