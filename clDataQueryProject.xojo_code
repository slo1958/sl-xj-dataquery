#tag Class
Protected Class clDataQueryProject
	#tag Method, Flags = &h0
		Function Connection() As clBasicSQLiteDB
		  
		  return self.DBConnection
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(SourceJSON as JSONItem)
		  
		  if SourceJSON = nil then Return
		  
		  self.ProjectName = SourceJSON.value(cProjectName)
		  
		  var f as FolderItem 
		  
		  f = new FolderItem(SourceJSON.value(cDatabasePath).StringValue)
		  
		  if f = nil then
		    
		  elseif not f.Exists then
		    
		  else
		    Self.PathToDatabase = f
		    
		    self.DBConnection = new clBasicSQLiteDB(f)
		    
		  end if
		  
		  Self.DataSourceName = SourceJSON.Value(cDataSource) 
		  
		  Return
		  
		End Sub
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
		Sub Destructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDataSourceName() As string
		  
		  return self.DataSourceName 
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetJSON() As JSONItem
		  
		  var jMaster as new JSONItem
		  
		  jMaster.value(cProjectName) = self.ProjectName
		  jMaster.value(cDatabasePath) = Self.PathToDatabase.NativePath
		  jMaster.Value(cDataSource) = Self.DataSourceName
		  
		  return jMaster
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function GetListOfProjects() As Dictionary
		  
		  var d as new Dictionary
		  
		  var dest as FolderItem = app.GetAppDataFolder()
		  
		  for each file as FolderItem in dest.Children
		    if file.Name.right(cFileExtension.Length) = cFileExtension then
		      
		      var jFile as TextInputStream
		      
		      try
		        jFIle = TextInputStream.Open(file)
		        
		      catch
		        
		      end try
		      
		      if jFile <> nil then
		        
		        try
		          var jTxt as string = jfile.ReadAll
		          var jMain as JSONItem = new JSONItem(jTxt)
		          
		          var jName as string = jMain.Value(cProjectName).StringValue
		          
		          d.value(file.name) = jName
		          
		        catch
		          
		        end try
		        
		        jfile.Close
		      end if
		      
		      
		      
		    end if
		    
		    
		  next
		  
		  return d
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub OpenDatabase(f as FolderItem)
		  
		  self.PathToDatabase = f
		  self.DBConnection = new clBasicSQLiteDB(f)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save()
		  
		  var txt as TextOutputStream
		  
		  var dest as FolderItem = app.GetAppDataFolder()
		  
		  var d as Int64 = DateTime.Now.SecondsFrom1970
		  
		  var filename as string = "PROJECT" + format(d, "000000000") + cFileExtension
		  
		  txt = TextOutputStream.Create(dest.Child(filename))
		  
		  txt.Write(self.GetJSON.ToString)
		  
		  txt.close
		  
		  
		  
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


	#tag Constant, Name = cDatabasePath, Type = String, Dynamic = False, Default = \"databasepath", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cDataSource, Type = String, Dynamic = False, Default = \"datasource", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cFileExtension, Type = String, Dynamic = False, Default = \".dqproj", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cProjectName, Type = String, Dynamic = False, Default = \"projectname", Scope = Public
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
End Class
#tag EndClass
