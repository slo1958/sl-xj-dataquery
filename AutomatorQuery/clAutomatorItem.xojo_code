#tag Class
Protected Class clAutomatorItem
	#tag Method, Flags = &h0
		Function canDelete() As boolean
		  return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getTextItem(theItem as integer) As string
		  return ""
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getTitle() As string
		  return title
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getType() As string
		  return "none"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Open()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub processLoad(theLoadLine as string)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub saveToTextFile(txtout as TextOutputStream)
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		ItemType As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		selected As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Title As string
	#tag EndProperty

	#tag Property, Flags = &h0
		workarea As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		yBase As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		yEnd As integer
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
	#tag EndViewBehavior
End Class
#tag EndClass
