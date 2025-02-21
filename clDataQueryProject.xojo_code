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
		  var TempFolderForFlows as FolderItem
		  
		  fdb = new FolderItem(SourceJSON.value(cDatabasePath).StringValue)
		  
		  var pfw as string = SourceJSON.Lookup(cFlowFolder, "").StringValue
		  
		  if pfw = "" then
		    pfw = SourceFile.Replace(cProjectFileExtension, "")
		    
		  end if
		  
		  if pfw <> "" then TempFolderForFlows = new FolderItem(pfw)
		  
		  if fdb = nil then
		    
		  elseif not fdb.Exists then
		    
		  else
		    Self.PathToDatabase = fdb
		    
		    self.DBConnection = new clBasicSQLiteDB(fdb)
		    
		  end if
		  
		  self.ProjectFIle = new FolderItem(SourceFile)
		  Self.DataSourceName = SourceJSON.Value(cDataSource) 
		  self.ProjectFolder = TempFolderForFlows
		  
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
		Shared Function GetListOfElements(FolderToScan as FolderItem, ExtensionFilter as string, JSONTagForName as string) As Dictionary
		  
		  var d as new Dictionary
		  
		  var dest as FolderItem = FolderToScan
		  
		  if not dest.Exists then return d
		  
		  for each file as FolderItem in dest.Children
		    if file.Name.right(ExtensionFilter.Length) = ExtensionFilter then
		      
		      var jFile as TextInputStream
		      
		      try
		        jFIle = TextInputStream.Open(file)
		        
		      catch
		        
		      end try
		      
		      if jFile <> nil then
		        
		        try
		          var jTxt as string = jfile.ReadAll
		          var jMain as JSONItem = new JSONItem(jTxt)
		          
		          var jName as string = jMain.Value(JSONTagForName).StringValue
		          
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
		Function GetListOfFlows() As Dictionary
		  return GetListOfElements(self.ProjectFolder, cFlowFileExtension, "groupname")
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function GetListOfProjects() As Dictionary
		  
		  return GetListOfElements(app.GetAppDataFolder(), cProjectFileExtension, cProjectName)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LoadFlow(SourceFileName as string) As JSONItem
		  
		  var sourceFolder as FolderItem = self.ProjectFolder
		  var sourceFile as FolderItem = sourceFolder.Child(SourceFileName)
		  
		  var txtin as TextInputStream = TextInputStream.Open(sourceFile)
		  var loadedStr as string = txtin.ReadAll
		  txtin.close
		  
		  
		  var loadedJSON as JSONItem = new JSONItem(loadedStr)
		  
		  return  loadedJSON 
		  
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
		  
		  self.ProjectFIle = dest.Child(filename+ cProjectFileExtension)
		  self.ProjectFolder = dest.Child(filename)
		  
		  txt = TextOutputStream.Create(self.ProjectFIle)
		  
		  txt.Write(self.GetJSON.ToString)
		  
		  txt.close
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SaveFlow(flow as JSONItem, DestinationFileName as string) As string
		  
		  
		  if flow = nil then return DestinationFileName
		  
		  var d as Int64 = DateTime.Now.SecondsFrom1970
		  
		  var filename as string
		  
		  
		  if DestinationFileName = "" then 
		    filename = "DQFLOW" + format(d, "000000000") + cFlowFileExtension
		    
		  else
		    filename = DestinationFileName
		    
		  end if
		  
		  var destinationFolder as FolderItem = self.ProjectFolder
		  var destinationFile as FolderItem 
		  var txt as TextOutputStream 
		  
		  
		  
		  // Create the folder to store analysis
		  
		  if not destinationFolder.Exists then
		    destinationFolder.CreateFolder
		    
		  end if
		  
		  destinationFile = destinationFolder.Child(filename)
		  
		  if destinationFile.exists and destinationFile.IsFolder then
		    try
		      destinationFile.RemoveFolderAndContents
		      
		    catch 
		      MessageBox("Failed to remove foldert " + destinationFile.NativePath)
		      return ""
		      
		    end Try
		    
		  end if
		  
		  txt = TextOutputStream.Create(destinationFile)
		  
		  txt.Write(flow.ToString)
		  
		  txt.close
		  
		  if DebugBuild then
		    destinationFolder.Parent.Open
		    
		  end if
		  
		  return filename
		  
		  
		  
		End Function
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

	#tag Constant, Name = cFlowFileExtension, Type = String, Dynamic = False, Default = \".dqflow", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cFlowFolder, Type = String, Dynamic = False, Default = \"flowStorage", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cProjectFileExtension, Type = String, Dynamic = False, Default = \".dqproj", Scope = Public
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
