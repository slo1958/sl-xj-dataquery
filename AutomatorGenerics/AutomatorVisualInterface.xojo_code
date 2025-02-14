#tag Interface
Protected Interface AutomatorVisualInterface
	#tag Method, Flags = &h0
		Sub AddStepAfter(Identifier as integer, NewStepType as string)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub EditStepWithID(Identifier as integer)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RenameStep(Identifier as integer, NewName as string)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SelectAndAddStepAfter(Identifier as integer)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateUI()
		  
		End Sub
	#tag EndMethod


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
End Interface
#tag EndInterface
