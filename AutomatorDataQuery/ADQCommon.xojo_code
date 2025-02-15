#tag Module
Protected Module ADQCommon
	#tag Method, Flags = &h0
		Sub FindItem(extends pmenu as DesktopPopupMenu, TextToFind as string)
		  
		  var j as integer= pmenu.SelectedRowIndex
		  
		  for i as integer = 0 to pmenu.LastRowIndex
		    if pmenu.RowTextAt(i) = TextToFind then j = i
		    
		  next
		  
		  pmenu.SelectedRowIndex = j
		  
		  return
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ValidFieldName(FieldNameToCheck as string) As Boolean
		  
		  var ValidChars as string
		  
		  ValidChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghjiklmnopqrstuvwxyz"
		  
		  for i as integer = 0 to FieldNameToCheck.Length
		    var char as string = FieldNameToCheck.Middle(i,1)
		    
		    if ValidChars.IndexOf(char) < 0 then Return false
		    
		    if i = 0 then
		      ValidChars = ValidChars + "_0123456789"
		      
		    end if
		    
		  next
		  
		  return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ValidValForType(ValueToCheck as string, ValueExpectedType as InternalFieldTypes) As Boolean
		  
		  
		  return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WriteLog(Message as string)
		  System.DebugLog(message)
		  
		End Sub
	#tag EndMethod


	#tag Constant, Name = cNotUsed, Type = String, Dynamic = False, Default = \"Not used", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cUseConstant, Type = String, Dynamic = False, Default = \"Use Constant", Scope = Public
	#tag EndConstant


	#tag Enum, Name = InternalFieldTypes, Type = Integer, Flags = &h0
		String
		  Double
		  Date
		  Integer
		Undefined
	#tag EndEnum

	#tag Enum, Name = StepTypes, Type = Integer, Flags = &h0
		Generic
		  Filter
		  GroupSplit
		  Start
		  Sort
		  Calculate
		  Pivot
		Map
	#tag EndEnum


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
	#tag EndViewBehavior
End Module
#tag EndModule
