#tag Class
Protected Class clDataQueryItem_Start
Inherits clDataQueryItem
	#tag Method, Flags = &h0
		Function canDelete() As boolean
		  return false
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(project as clDataQueryProject)
		  // Calling the overridden superclass constructor.
		  
		  Super.Constructor(nil)
		  
		  dim ssql as string
		  
		  
		  self.dataSource = project.GetDataSourceName
		  self.dbname = project.DatabaseName
		  
		  ssql="select * from "+ self.dataSource + " limit 1"
		  
		  var temp as new clBasicSQLiteQuery(project.Connection, ssql)
		  
		  redim KeyFields(0)
		  redim valueFields(0)
		  
		  var dct as Dictionary = temp.GetColumnTypes
		  
		  writelog "Found "+str(dct.Count)+" fields."
		  
		  for each FieldName as string in dct.keys
		    var ct as integer = dct.value(FieldName)
		    
		    writelog ("found field "+ FieldName +" fieldtype "+str(ct))
		    
		    select case ct
		    case 7 // Double
		      valueFields.Add(FieldName)
		      
		    case 3
		      keyFields.add(FieldName)
		      keyFieldType.add(InternalFieldTypes.Undefined)
		      
		    case 5
		      keyFields.add(FieldName)
		      keyFieldType.add(InternalFieldTypes.String)
		      
		    case 19
		      keyFields.add(FieldName)
		      keyFieldType.add(InternalFieldTypes.Integer)
		      
		    case 8 // Date
		      writelog ("Rejected field "+ FieldName +" fieldtype "+str(ct))
		      
		    case else
		      writelog ("Rejected field "+ FieldName +" fieldtype "+str(ct))
		      
		    end select
		    
		  next
		  
		  
		  writelog str(keyFields.LastIndex)+" key fields / "+ str(ubound(valueFields))+" value fields"
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetConfigJSON() As JSONItem
		  // Calling the overridden superclass method.
		  
		  var jMaster as  JSONItem = super.GetConfigJSON()
		  
		  var jItems as new  JSONItem
		  
		  jItems.Value(cJSONTagDataSource) = self.dataSource
		  jItems.Value(cJSONTagDatabaseName) = self.dbname
		  
		  jMaster.Value(cJSONTagItems) = jitems
		  
		  return jMaster
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getSql(IsLastStep as boolean) As string
		   
		  dim s as string
		  
		  var tempFields() as string
		  
		  
		  for i as integer = 1 to keyFields.LastIndex
		    
		    tempFields.Add( keyFields(i)+" as "+keyFields(i) + PostFixStr(IsLastStep))
		    
		  next
		  
		  for i as integer = 1 to ubound(valueFields)
		    tempFields.Add( valueFields(i)+" as "+valueFields(i) + PostFixStr(IsLastStep))
		    
		  next
		  
		  s = "Select " + string.FromArray(tempFields, ",") + " from " + dataSource
		  
		  return s
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getTextItem(theItem as integer) As string
		  select case theitem
		    
		  case 1
		    return "Table: " + datasource
		    
		  case 2
		    return "Database: " + dbname
		    
		  case else
		    return ""
		    
		  end select
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetTypeAsEnum() As StepTypes
		  
		  return StepTypes.Start
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function myImage() As picture
		  return start_38_38
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowConfigDialog()
		  
		  MessageBox( "Open operation not allowed on Start object")
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		dataSource As string
	#tag EndProperty

	#tag Property, Flags = &h0
		dbname As String
	#tag EndProperty


	#tag Constant, Name = cJSONTagDatabaseName, Type = String, Dynamic = False, Default = \"database", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cJSONTagDataSource, Type = String, Dynamic = False, Default = \"datasource", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="ID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
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
			Name="tmp"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
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
		#tag ViewProperty
			Name="dataSource"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="dbname"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
