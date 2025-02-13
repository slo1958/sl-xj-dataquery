#tag Class
Protected Class clCalcStep_Start
Inherits clCalcStep_Generic
	#tag Method, Flags = &h0
		Function canDelete() As boolean
		  return false
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		  
		  dim ssql as string
		  dim i as integer
		  dim n as integer
		  
		  dataSource = "CurrentSales" // getASourceName(ViewName_Queries,"data")
		  
		  'ssql="select top 1 * from "+cDetailTable
		  ssql="select top 1 * from "+dataSource
		  
		  redim KeyFields(0)
		  redim valueFields(0)
		  
		  writelog "Scanning "+ssql
		  
		  var temp as new clBasicSQLiteQuery(app.DBConnection, dataSource)
		  
		  var dct as Dictionary = temp.GetColumnTypes
		  
		  writelog "Found "+str(dct.Count)+" fields."
		  
		  for each FieldName as string in dct.keys
		    var ct as integer = dct.value(FieldName)
		    
		    select case ct
		    case 5
		      n=ubound(valueFields)+1
		      redim valueFields(n)
		      valueFields(n)= FieldName
		      
		    case 3
		      n=ubound(keyFields)+1
		      redim keyFields(n)
		      redim keyFieldType(n)
		      keyfields(n)=FieldName
		      keyFieldType(n)=20
		      
		    case 202
		      n=ubound(keyFields)+1
		      redim keyFields(n)
		      redim keyFieldType(n)
		      keyfields(n)=FieldName
		      keyFieldType(n)=10
		      
		    case else
		      writelog ("Rejected field "+ FieldName +" fieldtype "+str(ct))
		      
		    end select
		    
		  next
		  
		  
		  writelog str(ubound(keyFields))+" key fields / "+ str(ubound(valueFields))+" value fields"
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getSql() As string
		  dim i as integer
		  dim n as integer
		  dim s as string
		  
		  s="select inputrow"   
		  
		  for i=1 to ubound(keyFields)
		    s=s+"," + keyFields(i)+" as "+keyFields(i)+"_"+fieldPostFix
		  next
		  
		  for i=1 to ubound(valueFields)
		    s=s+"," + valueFields(i)+" as "+valueFields(i)+"_"+fieldPostFix
		  next
		  
		  s=s+" from "+dataSource
		  
		  return s
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getTextItem(theItem as integer) As string
		  return ""
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function myImage() As picture
		  return start_38_38
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function myType() As integer
		  return 400
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Open()
		  MessageBox( "Open operation not allowed on Start object")
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		dataSource As string
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
			Name="yBase"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="yEnd"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Title"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
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
			Name="ItemType"
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
	#tag EndViewBehavior
End Class
#tag EndClass
