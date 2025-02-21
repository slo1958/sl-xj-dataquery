#tag Class
Protected Class clAutomatorItem
	#tag Method, Flags = &h0
		Function canDelete() As boolean
		  return true
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(SourceJSON as JSONItem)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(NewItemType as string)
		  
		  self.ItemType = NewItemType
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetConfigJSON() As JSONItem
		  
		  return new JSONItem
		  
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
		Function GetTypeAsString() As string
		  return ItemType
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

	#tag Method, Flags = &h0
		Sub SetID(NewId as integer)
		  
		  self.ID = NewId
		  
		  if self.VisualSupport <> nil then self.VisualSupport.SetID(Newid)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetTitle(NewTitle as string)
		  self.Title = NewTitle
		  
		  if VisualSupport <> nil then
		    VisualSupport.SetTitle(NewTitle)
		    
		  end if
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		ID As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected ItemType As String
	#tag EndProperty

	#tag Property, Flags = &h0
		selected As boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected Title As string
	#tag EndProperty

	#tag Property, Flags = &h0
		VisualSupport As ccAutomatorItem
	#tag EndProperty

	#tag Property, Flags = &h0
		workarea As integer
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
			Name="ID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
