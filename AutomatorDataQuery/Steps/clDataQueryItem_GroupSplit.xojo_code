#tag Class
Protected Class clDataQueryItem_GroupSplit
Inherits clDataQueryItem
	#tag Method, Flags = &h0
		Sub Constructor(SourceJSON as JSONItem)
		  
		  // Calling the overridden superclass constructor.
		  
		  super.Constructor(SourceJSON)
		  
		  if SourceJSON = nil then return
		  
		  
		  //var ItemTitle as string = SourceJSON.Value(cJSONTagName)
		  //Self.SetTitle(ItemTitle)
		  
		  var jItems as    JSONItem 
		  
		  sFieldDImension.RemoveAll
		  
		  jitems = SourceJSON.Value(cJSONTagItems)
		  
		  if jitems.IsArray then
		    for i as integer = 0 to jItems.LastRowIndex
		      
		      var jitem as JSONItem = jitems.ChildAt(i)
		      
		      var index as integer = jitem.value(cJSONTagIndex)
		      
		      sFieldDImension.add(jitem.Value(cJSONTagField))
		      
		    next
		    
		  end if
		  
		  IncludeCount = false
		  
		  sFieldMeasure.RemoveAll
		  tFieldMeasure.RemoveAll
		  
		  if SourceJSON.HasKey(cJSONTagMeasure) then
		    jitems = SourceJSON.Value(cJSONTagMeasure)
		    
		    for i as integer = 0 to jItems.LastRowIndex
		      var jitem as JSONItem = jitems.ChildAt(i)
		      
		      var index as integer = jitem.value(cJSONTagIndex)
		      
		      if jitem.Value(cJSONAggreg) = 9999 then 
		        IncludeCount = True
		        
		      else
		        sFieldMeasure.add(jitem.Value(cJSONTagField))
		        tFieldMeasure.add(jitem.Value(cJSONAggreg))
		        
		      end if
		      
		      
		    next
		    
		  else
		    sFieldMeasure.RemoveAll
		    IncludeCount = false
		    
		  end if
		  
		  return 
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetConfigJSON() As JSONItem
		  // Calling the overridden superclass method.
		  
		  var jMaster as  JSONItem = super.GetConfigJSON()
		  
		  var jItems as new  JSONItem
		  
		  var jmeasures as new JSONItem
		  
		  for i as integer = 0 to sFieldDImension.LastIndex
		    
		    var jItem as new JSONItem
		    jitem.value(cJSONTagIndex) = i
		    jitem.Value(cJSONTagField) = sFieldDImension(i)
		    
		    jitems.Add(jitem)
		    
		    
		  next
		  
		  if self.IncludeCount then
		    var jitem as new JSONItem
		    jitem.Value(cJSONTagIndex) = 0
		    jitem.Value(cJSONTagField) = ""
		    jitem.value(cJSONAggreg) = 9999
		    
		    jmeasures.add(jitem)
		    
		  end if
		  
		  
		  for i as integer = 0 to sFieldMeasure.LastIndex
		    var jitem as new JSONItem
		    jitem.value(cJSONTagIndex) = i
		    jitem.value(cJSONTagField) = sFieldMeasure(i)
		    jitem.value(cJSONAggreg) = tFieldMeasure(i)
		    
		    jmeasures.add(jitem)
		    
		  next
		  
		  
		  jMaster.Value(cJSONTagItems) = jitems
		  
		  if jmeasures.Count >0 then
		    jMaster.Value(cJSONTagMeasure) = jmeasures
		    
		  end if
		  
		  return jMaster
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getOneItem(theItem as integer) As string
		  
		  
		  if theItem <= sFieldDImension.LastIndex then
		    return sFieldDImension(theItem)
		    
		  else
		    return ""
		    
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getSql(IsLastStep as boolean) As String
		  dim sSource as string
		  dim sPostFix as string
		  
		  dim s as string 
		  
		  if prevDataQueryItem<>nil then 
		    sSource=prevDataQueryItem.getSql(false)
		    sPostFix=prevDataQueryItem.fieldPostFix
		  else
		    ssource=""
		    sPostFix=""
		  end if
		  
		  
		  var selectFields() as string
		  var groupByFIelds() as string
		  
		  if sPostFix<>"" then
		    
		    for i as integer = 0 to sFieldDImension.LastIndex
		      if sFieldDImension(i).trim.Length > 0 then
		        selectFields.add( sFieldDImension(i)+"_"+sPostFix +"  as "+sFieldDImension(i) + PostFixStr(IsLastStep))
		        groupByFIelds.add(sFieldDImension(i)+"_"+sPostFix)
		        
		      end if
		    next
		    
		    if self.IncludeCount then
		      selectFields.add("COUNT(*)  " + " as " +  "RowCount"  + PostFixStr(IsLastStep))
		      
		    end if
		    
		    
		    for i as integer = 1 to  ubound(prevDataQueryItem.valueFields)
		      selectFields.add("sum(" + prevDataQueryItem.valueFields(i)+"_"+sPostFix +") as "+ prevDataQueryItem.valueFields(i) + PostFixStr(IsLastStep))
		      
		    next
		    
		    
		    for i as integer = 0 to sFieldMeasure.LastIndex
		      if sFieldMeasure(i).Trim.Length > 0 then
		        
		        if bitand(tFieldMeasure(i), cstHasMin) = cstHasMin then
		          selectFields.add("MIN(" +  sFieldMeasure(i) + "_" + sPostFix +") as Min"+ sFieldMeasure(i) + PostFixStr(IsLastStep))
		          
		        end if
		        
		        if bitand(tFieldMeasure(i), cstHasMax) = cstHasMax then
		          selectFields.add("MAX(" +  sFieldMeasure(i) + "_" + sPostFix +") as Max"+ sFieldMeasure(i) + PostFixStr(IsLastStep))
		          
		        end if
		        
		        if bitand(tFieldMeasure(i), cstHasAvg) = cstHasAvg then
		          selectFields.add("AVG(" +  sFieldMeasure(i) + "_" + sPostFix +") as Avg"+ sFieldMeasure(i) + PostFixStr(IsLastStep))
		          
		        end if
		        
		      end if
		      
		    next
		    
		    
		    s = "SELECT " + string.FromArray(selectFields,",") +"  FROM (" + chr(13) + chr(13) + sSource + chr(13) +  ")" + chr(13) 
		    
		    
		    if groupByFIelds.LastIndex >= 0 then 
		      s = s + " GROUP BY " + string.FromArray(groupByFIelds,",")
		      
		    end if
		  end if
		  
		  return s
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getTextItem(theItem as integer) As string
		  
		  if theItem <4 then 
		    return getOneItem(theItem-1)
		    
		    
		  elseif itemInUse> 4 then
		    return "..."
		    
		  else
		    return ""
		    
		  end if
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetTypeAsEnum() As StepTypes
		  
		  return StepTypes.GroupSplit
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function itemInUse() As integer
		  
		  return sFieldDImension.Count
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function myImage() As picture
		  return GrouSplit_38_38
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowConfigDialog()
		  
		  wndDataQueryItem_GroupSplit.showme me
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub updateFieldsFromPred()
		  '
		  ' a group/split   but passes all value fields and only selected key fields
		  '
		  
		  
		  dim n as integer
		  
		  
		  if prevDataQueryItem<>nil then
		    
		    keyFields.RemoveAll
		    
		    for i as integer = 0 to sFieldDImension.LastIndex
		      var Field1Type as InternalFieldTypes = prevDataQueryItem.getKeyType(sFieldDImension(i))
		      keyFields.add(new clDataQueryFieldInfo(sFieldDImension(i), Field1Type))
		      
		    next
		    
		    n=ubound(prevDataQueryItem.valueFields)
		    redim valueFields(n)
		    
		    for i as integer = 1 to n
		      valueFields(i)=prevDataQueryItem.valueFields(i)
		    next
		    
		    if IncludeCount then 
		      redim valueFields(valueFields.LastIndex+1)
		      valueFields(valueFields.LastIndex) = "RowCount"
		      
		    end if
		    
		    for i as integer = 0 to sFieldMeasure.LastIndex
		      if sFieldMeasure(i).Trim.Length > 0 then
		        
		        if bitand(tFieldMeasure(i), cstHasMin) = cstHasMin then
		          redim valueFields(valueFields.LastIndex+1)
		          valueFields(valueFields.LastIndex) = "Min"+ sFieldMeasure(i) 
		          
		        end if
		        
		        if bitand(tFieldMeasure(i), cstHasMax) = cstHasMax then
		          redim valueFields(valueFields.LastIndex+1)
		          valueFields(valueFields.LastIndex) = "Max"+ sFieldMeasure(i) 
		          
		        end if
		        if bitand(tFieldMeasure(i), cstHasAvg) = cstHasAvg then
		          redim valueFields(valueFields.LastIndex+1)
		          valueFields(valueFields.LastIndex) = "Avg"+ sFieldMeasure(i) 
		          
		        end if
		      end if
		      
		    next
		    
		    
		  end if
		  
		  return
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		IncludeCount As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		sFieldDImension() As string
	#tag EndProperty

	#tag Property, Flags = &h0
		sFieldMeasure() As string
	#tag EndProperty

	#tag Property, Flags = &h0
		tFieldMeasure() As Integer
	#tag EndProperty


	#tag Constant, Name = cJSONAggreg, Type = String, Dynamic = False, Default = \"aggregate", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cJSONTagField, Type = String, Dynamic = False, Default = \"groupbyfield", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cJSONTagIndex, Type = String, Dynamic = False, Default = \"index", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cJSONTagMeasure, Type = String, Dynamic = False, Default = \"measures", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cstHasAvg, Type = Double, Dynamic = False, Default = \"2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cstHasMax, Type = Double, Dynamic = False, Default = \"4", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cstHasMin, Type = Double, Dynamic = False, Default = \"8", Scope = Public
	#tag EndConstant

	#tag Constant, Name = MaxDimensions, Type = Double, Dynamic = False, Default = \"6", Scope = Public
	#tag EndConstant

	#tag Constant, Name = MaxMeasure, Type = Double, Dynamic = False, Default = \"5", Scope = Public
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
			Name="IncludeCount"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
