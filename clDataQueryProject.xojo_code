#tag Class
Protected Class clDataQueryProject
	#tag Method, Flags = &h0
		Function Connection() As clBasicSQLiteDB
		  
		  return self.DBConnection
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(SourceJSON as JSONItem, SourceFile as string)
		  
		  if SourceJSON = nil then Return
		  
		  self.ProjectName = SourceJSON.value(cProjectName)
		  
		  var fdb as FolderItem 
		  var ffw as FolderItem
		  
		  fdb = new FolderItem(SourceJSON.value(cDatabasePath).StringValue)
		  
		  var pfw as string = SourceJSON.Lookup(cFlowFolder, "").StringValue
		  
		  if pfw = "" then
		    pfw = SourceFile.Replace(cFileExtension, "")
		    
		  end if
		  
		  if pfw <> "" then ffw = new FolderItem(pfw)
		  
		  if fdb = nil then
		    
		  elseif not fdb.Exists then
		    
		  else
		    Self.PathToDatabase = fdb
		    
		    self.DBConnection = new clBasicSQLiteDB(fdb)
		    
		  end if
		  
		  self.ProjectFIle = new FolderItem(SourceFile)
		  Self.DataSourceName = SourceJSON.Value(cDataSource) 
		  self.ProjectFolder = ffw
		  
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
		  jMaster.Value(cFlowFolder) = self.ProjectFolder.NativePath
		  
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
		  
		  var filename as string = "PROJECT" + format(d, "000000000") 
		  
		  self.ProjectFIle = dest.Child(filename+ cFileExtension)
		  self.ProjectFolder = dest.Child(filename)
		  
		  txt = TextOutputStream.Create(self.ProjectFIle)
		  
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

	#tag Property, Flags = &h0
		ProjectFIle As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		ProjectFolder As FolderItem
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

	#tag Constant, Name = cFlowFolder, Type = String, Dynamic = False, Default = \"flowStorage", Scope = Public
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
