#tag Class
Protected Class clBasicSQLiteQuery
Implements TableRowReaderInterface
	#tag Method, Flags = &h0
		Function ColumnCount() As integer
		  // Part of the TableRowReaderInterface interface.
		  Return Fields.Count
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(cdb as clBasicSQLiteDB, SqlSelect as string)
		  
		  
		  self.SourceSql = SqlSelect
		  self.fieldTypes = new Dictionary
		  self.fields.RemoveAll
		  
		  if SqlSelect.trim.IndexOf(" " ) < 0 then
		    self.rs = cdb.db.SelectSQL("Select * from " + SqlSelect)
		    
		  else
		    self.rs = cdb.db.SelectSQL(SqlSelect)
		    
		  end if
		  
		  self.IndexRow = 0
		  
		  for i as integer = 0 to  self.rs.LastColumnIndex
		    var fieldname as string = rs.ColumnAt(i).Name
		    var fieldType as integer = rs.ColumnType(i)
		    
		    
		    fields.Add(fieldname)
		    
		    fieldTypes.Value(fieldname) = fieldType
		    
		    
		  next
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CurrentRowIndex() As integer
		  // Part of the TableRowReaderInterface interface.
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function EndOfTable() As boolean
		  // Part of the TableRowReaderInterface interface.
		  
		  
		  return rs.AfterLastRow
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetColumnNames() As string()
		  // Part of the TableRowReaderInterface interface.
		  
		  return self.Fields
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetColumnTypes() As dictionary
		  // Part of the TableRowReaderInterface interface.
		  
		  Return self.FieldTypes
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetListOfExternalElements() As string()
		  // Part of the TableRowReaderInterface interface.
		  
		  var v() as string
		  return v
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Name() As string
		  // Part of the TableRowReaderInterface interface.
		  
		  return ""
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function NextRowAsVariant() As variant()
		  // Part of the TableRowReaderInterface interface.
		  
		  
		  var v() as Variant
		  
		  for each field as string in fields
		    
		    select case FieldTypes.Value(field)
		      
		    case 1,2, 3
		      v.Add(rs.Column(field).IntegerValue)
		      
		    case 6, 7
		      v.Add(rs.Column(field).DoubleValue)
		      
		    case 8
		      v.Add(rs.Column(field).DateTimeValue)
		      
		    case else
		      System.DebugLog("Unhandeld type " + str(FieldTypes.Value(field)))
		      
		    end select
		    
		  next
		  
		  return v
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateExternalName(new_name as string)
		  // Part of the TableRowReaderInterface interface.
		  
		  Return
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Fields() As String
	#tag EndProperty

	#tag Property, Flags = &h0
		FieldTypes As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		IndexRow As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		rs As RowSet
	#tag EndProperty

	#tag Property, Flags = &h0
		SourceSql As string
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
			Name="SourceSql"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IndexRow"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
