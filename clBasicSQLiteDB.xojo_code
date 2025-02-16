#tag Class
Protected Class clBasicSQLiteDB
	#tag Method, Flags = &h0
		Sub Constructor(PathToDatabase as FolderItem)
		  
		  self.fld = PathToDatabase
		  
		  if not PathToDatabase.Exists then return
		  
		  self.mdb = new SQLiteDatabase(PathToDatabase)
		  
		  var rt as RowSet = self.mdb.Tables
		  
		  While Not rt.AfterLastRow
		    DiscoveredTables.Add(rt.Column("TableName").StringValue)
		    rt.MoveToNextRow
		    
		  Wend
		  
		  rt.close
		  
		  return
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function db() As SQLiteDatabase
		  return self.mdb
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetTable(NameOfTable as string) As TableRowReaderInterface
		  
		  if self.DiscoveredTables.IndexOf(NameOfTable) >-1 then
		    return new clBasicSQLiteTable(self, NameOfTable)
		    
		  else
		    return nil
		    
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Name() As string
		  if fld = nil then 
		    return "Not connected"
		    
		  else
		    return fld.Name
		    
		  end if
		  
		End Function
	#tag EndMethod


	#tag Note, Name = DataType
		
		0 (Null) Denotes the absence of any value, i.e., a missing value.
		1 (Byte) Stores the byte representation of a character string.
		2 (SmallInt) A numeric data type with no fractional part. The maximum number of digits is implementation-specific, but is usually less than or equal to INTEGER. SQLite supports 4-byte smallints. If you are using another data source, check the documentation of your data source.
		3 (Integer) A numeric data type with no fractional part. The maximum number of digits is implementation-specific. SQLite supports 8-byte integer columns and the FieldType evaluates to 19 (64-bit integer).
		4 (Char) Stores alphabetic data, in which you specify the maximum number of characters for the field, i.e., CHAR (20) for a 20 character field. If a record contains fewer than the maximum number of characters for the field, the remaining characters will be padded with blanks.
		5 (Text or VarChar) Stores alphabetic data, in which the number of characters vary from record to record, but you don't want to pad the unused characters with blanks. For example, VARCHAR (20) specifies a VARCHAR field with a maximum length of 20 characters.
		6 (Float) Stores floating-point numeric values with a precision that you specify, i.e., FLOAT (5).
		7 (Double) Stores double-precision floating-point numbers.
		8 (Date) Stores dummyfield4, month, and day values of a date in the format YYYY-MM-DD. The dummyfield4 value is four digits; the month and day values are two digits.
		9 (Time) Stores hour, minute, and second values of a time in the format HH:MM:SS. The hours and minutes are two digits. The seconds values is also two digits, may include a optional fractional part, e.g., 09:55:25.248. The default length of the fractional part is zero.
		10 (TimeStamp) Stores both date and time information in the format YYYY-MM-DD HH:MM:SS. The lengths of the components of a TimeStamp are the same as for Time and Date, except that the default length of the fractional part of the time component is six digits rather than zero. If a TimeStamp values has no fractional component, then its length is 19 digits If it has a fractional component, its length is 20 digits, plus the length of the fractional component.
		11 (Currency) This is a 64-bit fixed-point number format that holds 15 digits to the left of the decimal point and 4 digits to the right.
		12 (Boolean) Stores the values of TRUE or FALSE.
		13 (Decimal) Stores a numeric value that can have both an integral and fractional part. You specify the total number of digits and the number of digits to the right of the decimal place, i.e., DECIMAL (5.2) specifies a decimal field that can contain values up to 999.99. DECIMAL (5) specifies a field that can contain values up to 99,999.
		14 (Binary) Stores code, images, and hexadecimal data. Consult the documentation of your data source for information on the maximum size of a Binary field.
		15 (Long Text (Blob)) Stores a text object. Consult the documentation of your data source for information on the maximum size of a Blob.
		16 (Long VarBinary (Blob)) Stores a binary object. SQLite supports blobs of up to any size. Furthermore, a blob can be stored in a column of any declared data affinity. If you are using another data source, check the documentation of your data source.
		17 (MacPICT) Stores a Macintosh PICT image. SQLite does not support this data type. Use a Blob to store images.
		18 (String) Text up to about 2 billion bytes. The same as VarChar.
		19 (Int64) Stores a 64-bit integer. Integer fields in SQLite are 64 bits and FieldType returns 19.
		255 (Unknown) Unrecognized data type.
		
		
		
	#tag EndNote


	#tag Property, Flags = &h21
		Private DiscoveredTables() As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private fld As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mdb As SQLiteDatabase
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
	#tag EndViewBehavior
End Class
#tag EndClass
