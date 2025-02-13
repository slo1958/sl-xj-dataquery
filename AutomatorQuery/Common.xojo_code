#tag Module
Protected Module Common
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
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ValidValForType(ValueToCheck as string, ValueExpectedType as integer) As Boolean
		  
		  
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
