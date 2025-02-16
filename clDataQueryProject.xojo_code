#tag Class
Protected Class clDataQueryProject
	#tag Method, Flags = &h0
		Function Connection() As clBasicSQLiteDB
		  
		  return self.DBConnection
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(NewProjectName as string)
		  self.ProjectName = NewProjectName
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DatabaseName() As string
		  if self.PathToDatabase = nil then 
		    return ""
		  else
		    return self.PathToDatabase.Name
		    
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDataSourceName() As string
		  
		  return self.DataSourceName 
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OpenDatabase(f as FolderItem)
		  
		  self.PathToDatabase = f
		  self.DBConnection = new clBasicSQLiteDB(f)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetDataSourceName(Name as string)
		  self.DataSourceName = name
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		#tag Note
			Table name or view name
			
		#tag EndNote
		Private DataSourceName As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DBConnection As clBasicSQLiteDB
	#tag EndProperty

	#tag Property, Flags = &h21
		Private PathToDatabase As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ProjectName As string
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
			Name="ProjectName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DataSourceName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
