#tag Class
Protected Class clDataQueryItem_Start
Inherits clDataQueryItem
	#tag Method, Flags = &h0
		Function canDelete() As boolean
		  return false
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(FlowDataSource as String)
		  // Calling the overridden superclass constructor.
		  Super.Constructor(StepTypes.Start)
		  
		  
		  dim ssql as string
		  var i  as integer
		  dim n as integer
		  
		  self.dataSource = FlowDataSource
		  
		  ssql="select * from "+ self.dataSource + " limit 1"
		  
		  redim KeyFields(0)
		  redim valueFields(0)
		  
		  
		  var temp as new clBasicSQLiteQuery(app.DBConnection, ssql)
		  
		  self.dbname = app.DBConnection.Name
		  
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
		Function getSql() As string
		  var i  as integer
		  dim n as integer
		  dim s as string
		  
		  
		  var tempFields() as string
		  
		  for i=1 to keyFields.LastIndex
		    tempFields.Add( keyFields(i)+" as "+keyFields(i)+"_"+fieldPostFix)
		    
		  next
		  
		  for i=1 to ubound(valueFields)
		    tempFields.Add( valueFields(i)+" as "+valueFields(i)+"_"+fieldPostFix)
		    
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
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
