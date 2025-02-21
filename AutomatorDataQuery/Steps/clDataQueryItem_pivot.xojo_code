#tag Class
Protected Class clDataQueryItem_pivot
Inherits clDataQueryItem
	#tag Method, Flags = &h21
		Private Sub Build_Remaining_KeyFields()
		  
		  dim sField_Remaining(0) as string
		  dim sField_R_Type(0) as InternalFieldTypes
		  
		  var i  as integer
		  var jField  as integer
		  
		  '
		  ' identify key fields used to build blocks and remaining key fields
		  ' 
		  if prevDataQueryItem=nil then
		    
		  else
		    
		    redim sField_Remaining(ubound(prevDataQueryItem.keyFields))
		    redim sField_R_Type(ubound(prevDataQueryItem.keyFields))
		    
		    for i=1 to ubound(prevDataQueryItem.keyFields)
		      sField_Remaining(i)=prevDataQueryItem.keyFields(i)
		      sField_R_Type(i)=prevDataQueryItem.keyFieldType(i)
		    next
		    
		    for jField=1 to 3
		      
		      for i=1 to ubound(sField_Remaining)
		        if sField_Remaining(i)=sField(jField) then
		          sField_Remaining(i)="$$$$"
		        end if
		      next
		      
		    next
		    
		  end if
		  
		  '
		  ' store in output key fields
		  '
		  redim keyFields(0)
		  redim keyFieldType(0)
		  
		  for i=1 to ubound(sField_Remaining)
		    if sField_Remaining(i)<>"$$$$" then
		      jField=keyFields.LastIndex+1
		      redim keyFields(jField)
		      redim keyFieldType(jField)
		      
		      keyFields(jField)=sField_Remaining(i)
		      keyFieldType(jField)=sField_R_Type(i)
		      
		    end if
		    
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  
		  
		  super.Constructor(StepTypes.Pivot)
		  
		  var i  as integer
		  
		  for i=0 to maxItems
		    binuse(i)=false
		  next
		  
		  nextItem=-1
		   
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GenSQL_GetRemainingKeyFields(NamePrefix as string, NameSuffix as string) As string()
		  
		  var tmpFields() as string
		  
		  var sPostFix as string = prevDataQueryItem.fieldPostFix
		  
		  for i as integer = 1 to keyFields.LastIndex
		    if NameSuffix = "" then
		      tmpFields.Add(NamePrefix + keyFields(i)+"_"+sPostFix)
		      
		    else
		      tmpFields.Add(NamePrefix + keyFields(i)+"_"+sPostFix + " " + keyFields(i) +  NameSuffix)
		      
		    end if
		    
		  next
		  
		  return tmpFields
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GenSQL_GetValueFields(NamePrefix as string, NameSuffix as string) As string()
		  
		  var tmpFields() as string
		  
		  var sPostFix as string = prevDataQueryItem.fieldPostFix
		  
		  for i as integer = 1 to ubound(prevDataQueryItem.valueFields)
		    if NameSuffix = "" then
		      tmpfields.Add(nameprefix + prevDataQueryItem.valueFields(i)+"_"+sPostFix)
		      
		    else
		      tmpfields.Add(nameprefix + prevDataQueryItem.valueFields(i)+"_"+sPostFix + " " + prevDataQueryItem.valueFields(i)+NameSuffix)
		      
		    end if
		    
		  next
		  
		  return tmpFields
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetConfigJSON() As JSONItem
		  // Calling the overridden superclass method.
		  
		  Var returnValue as JSONItem = Super.GetConfigJSON()
		  
		  var jItemBlocks as new  JSONItem
		  var jitemFields as new JSONItem
		  var jitemConditions as new JSONItem
		  
		  for i as integer = 0 to sBlockName.LastIndex
		    var jitem as new JSONItem
		    if bInUse(i) then
		      jitem.value("blockindex") = str(i)
		      jitem.Value("value") = sBlockName(i)
		      
		      jItemBlocks.add(jitem)
		    end if
		    
		  next
		  
		  for i as integer = 0 to sField.LastIndex
		    var jitem as new JSONItem
		    if sField(i).trim <> "" then
		      jitem.value("fieldindex") = str(i)
		      jitem.Value("value") = sField(i)
		      
		      jitemFields.add(jitem)
		      
		    end if
		    
		  next
		  
		  for i as integer = 0 to sBlockName.LastIndex
		    
		    for j as integer = 0 to sfield.LastIndex
		      var jitem as new JSONItem
		      if sConst(j,i) <> "" then
		        jitem.value("blockindex") = str(i)
		        jitem.value("fieldindex") = str(j)
		        jitem.Value("value") = sConst(j,i)
		        
		        jitemConditions.add(jitem)
		      end if
		      
		    next
		    
		  next
		  
		  returnValue.value("blocks") = jItemBlocks
		  returnValue.value("fields")= jitemFields
		  returnValue.value("filters") = jitemConditions
		  
		  return returnValue
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getOneItem(theItem as integer) As string
		  dim s as string
		  var i  as integer
		  if bInUse(theItem) then
		    s=sBlockName(theItem)
		    s=s+" for "
		    for i=1 to 3
		      if (sfield(i)<> cNotUsed) and (sfield(i)<>"")  then s=s+sField(i)+" = "+sConst(i,theItem)
		    next
		    
		    return s
		    
		  else
		    return ""
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getSql(IsLastStep as boolean) As string
		  
		  const cDriverCTE as string = "driversrc"
		  const cDataCTE as string = "datasrc"
		  
		  dim sSource as string
		  dim sPostFix as string
		  
		  // Info from previous steps
		  if prevDataQueryItem<>nil then 
		    sSource=prevDataQueryItem.getSql(false)
		    sPostFix=prevDataQueryItem.fieldPostFix
		  else
		    ssource=""
		    sPostFix=""
		  end if
		  
		  var output as string
		  var tmpfields() as string
		  
		  if sPostFix = "" then return ""
		  
		  var CTE0 as string
		  var CTE1 as string
		  
		  
		  
		  '
		  ' identify remaining key fields
		  '
		  Build_Remaining_KeyFields
		  
		  // First CTE is the driver, only includes distinct remaining key fields
		  
		  tmpfields.RemoveAll
		  
		  // add remaining key fields
		  for each s as string in self.GenSQL_GetRemainingKeyFields("","")
		    tmpfields.add(s)
		    
		  next
		  
		  
		  CTE0 =  cDriverCTE + " as (SELECT DISTINCT " + string.FromArray(tmpfields, ",") + " FROM (" + ssource +"))"
		  
		  // Second CTE includes all filter key fields, remaining key fields and measures
		  
		  
		  tmpfields.RemoveAll
		  
		  // add remaining key fields
		  
		  for each s as string in self.GenSQL_GetRemainingKeyFields("", "")
		    tmpfields.add(s)
		    
		  next
		  
		  // add filter fields
		  
		  for jBlock as integer  = 0 to maxitems  
		    for jfield as integer = 1 to 3
		      if (sconst(jfield,jblock)<>"") and (sField(jField)<>cNotUsed)  then
		        if tmpfields.IndexOf( sField(jfield)+"_"+sPostFix) < 0 then tmpfields.add(sField(jfield)+"_"+sPostFix )
		        
		      end if
		    next
		  next
		  
		  // add value fields
		  
		  for each s as string in self.GenSQL_GetValueFields("", "")
		    tmpfields.add(s)
		    
		  next
		  
		  // Second CTE 
		  CTE1 =  cDataCTE + " as (SELECT  " + string.FromArray(tmpfields, ",") + " FROM (" + ssource +"))"
		   
		  
		  // Create main query
		  
		  var joinedSrc() as string
		  
		  // Add fields from master CTE
		  
		  tmpfields.RemoveAll
		  
		  // for each s as string in self.GenSQL_GetRemainingKeyFields(cDriverCTE+".",PostFixStr(IsLastStep))
		  // 
		  // tmpfields.add(s)
		  // 
		  // next
		  
		  for i as integer = 1 to keyFields.LastIndex
		    var s as string =  keyFields(i)
		    
		    if IsLastStep then
		      
		      // rename back to original name if last query
		      tmpfields.add( cDriverCTE+"." + s + "_" + sPostFix + " " + s)
		      
		    else
		      tmpfields.add( cDriverCTE+"." + s + "_" + sPostFix + " " + s + "_"+fieldPostFix)
		      
		    end if
		    
		    
		  next
		  
		  
		  // Add measure fields from joined queries
		  for jBlock as integer = 0 to maxitems 
		    if sBlockName(jBlock)<>"" and bInUse(jBlock) then
		      var blockID as string = "B" + str(jblock)
		      
		      for each s as string in self.GenSQL_GetValueFields(BlockID+".", "_"+sBlockName(jblock) + PostFixStr(IsLastStep))
		        tmpfields.add(s)
		        
		      next
		      
		    end if
		    
		  next
		  
		   
		  joinedSrc.Add("SELECT " + string.FromArray(tmpfields,",") + " FROM " + cDriverCTE)
		  
		  // add queryies based on data CTE
		  
		  
		  for jBlock as integer = 0 to maxitems 
		    if sBlockName(jBlock)<>"" and bInUse(jBlock) then
		      var whereClause() as string
		      var joinFields() as string
		      
		      var blockID as string = "B" + str(jblock)
		      
		      tmpfields.RemoveAll
		      joinFields.RemoveAll
		      
		      // add remaining key fields
		      for each s as string in self.GenSQL_GetRemainingKeyFields("", "")
		        tmpfields.Add(s)
		        
		        joinFields.add(cDriverCTE + "." + s + " = " + blockID + "." + s)
		        
		      next
		      
		      
		      // add value fields
		      for i as integer = 1 to ubound(prevDataQueryItem.valueFields)
		        tmpfields.Add(prevDataQueryItem.valueFields(i)+"_"+sPostFix)
		        
		      next
		      
		      for jfield as integer = 1 to 3
		        if (sconst(jfield,jblock)<>"") and (sField(jField)<>cNotUsed)  then
		          var tempW as string
		          tempW = sField(jfield)+"_"+sPostFix + " = " + sconst(jfield,jblock)
		          whereClause.Add("(" + tempW + ")")
		          
		        end if
		      next
		      
		      joinedSrc.Add("( SELECT " + string.FromArray(tmpfields,",") + " FROM " + cDataCTE + " WHERE " + String.FromArray(whereClause) + ") " + blockID + " ON (" + string.FromArray(joinFields," AND ") + ")" )
		      
		    end if
		    
		  next 
		  
		  output = " WITH " + CTE0 + "," + CTE1 + " " + string.FromArray(joinedSrc, " LEFT JOIN ")
		  
		  
		  return output
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getTextItem(theItem as integer) As string
		  dim s as string
		  
		  //if iJoinType=1  and theItem=1 then s="(master key)"
		  
		  if theItem <4 then
		    if bInuse(theItem-1) then
		      return getOneItem(theItem-1) + " " +s
		    else
		      return ""
		    end if
		    
		  elseif itemInUse>4 then
		    return "..."
		  elseif bInUse(3) then
		    return getOneItem(3)
		  else
		    return ""
		  end if
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function itemInUse() As integer
		  var i  as integer
		  var j  as integer
		  
		  j=0
		  
		  for i=0 to maxItems
		    if bInUse(i) then j=j+1
		  next
		  
		  Return j
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function myImage() As picture
		  return pivot_38_38
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub processLoadedJSON(theLine as string)
		  dim m as integer
		  dim s as string
		  var i  as integer
		  
		  m=val(NthField(theline,";",1))
		  i=instr(theLine,";")
		  s=trim(mid(theLine,i+1,9999))
		  
		  select case m
		  case 10
		    nextItem=nextItem+1
		    
		  case 11
		    sfield(1)=s
		  case 12
		    sfield(2)=s
		  case 13
		    sfield(3)=s
		  case 14
		    //iJoinType=val(s)
		    
		  case 15
		    sBlockName(nextItem)=s
		    binuse(nextitem)=true
		  case 16
		    sConst(1,nextItem)=s
		    binuse(nextitem)=true
		  case 17
		    sConst(2,nextItem)=s
		    binuse(nextitem)=true
		  case 18
		    sConst(3,nextItem)=s
		    binuse(nextitem)=true
		  case else
		  end select
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub saveMyData(theOutput as textoutputStream)
		  var i  as integer
		  
		  for i=0 to maxItems
		    if bInUse(i) then
		      theOutput.writeline "50;10;xx"
		      theOutput.writeline "50;15;"+sBlockName(i)
		      theOutput.writeline "50;16;"+sConst(1,i)
		      theOutput.writeline "50;17;"+sConst(2,i)
		      theOutput.writeline "50;18;"+sConst(3,i)
		    end if
		  next
		  
		  theOutput.writeline "50;11;"+sfield(1)
		  theOutput.writeline "50;12;"+sfield(2)
		  theOutput.writeline "50;13;"+sfield(3)
		  //theOutput.writeline "50;14;"+str(iJoinType)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ShowConfigDialog()
		  
		  wndDataQueryItem_pivot.showme me
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub updateFieldsFromPred()
		  '
		  ' a pivot removes some records, but passes all fields
		  '
		   
		  
		  if prevDataQueryItem<>nil then
		    
		    Build_Remaining_KeyFields
		    
		    redim valueFields(0)
		    
		    // for jBlock=0 to maxItems
		    // if sBlockName(jblock)<>"" then
		    // 
		    // for i=1 to ubound(prevDataQueryItem.valueFields)
		    // n=ubound(valueFields)+1
		    // redim valueFields(n)
		    // valueFields(n)=prevDataQueryItem.valueFields(i)+"_"+sBlockName(jblock)
		    // next
		    // end if
		    // next
		    
		    
		    for jBlock as integer = 0 to maxitems 
		      if sBlockName(jBlock)<>"" and bInUse(jBlock) then
		        
		        for i as integer = 1 to ubound(prevDataQueryItem.valueFields)
		          valueFields.add(prevDataQueryItem.valueFields(i) + "_" + sBlockName(jblock))
		          
		        next
		        
		      end if
		      
		    next
		    
		    
		    
		    
		  else
		    redim keyFields(0)
		    redim valueFields(0)
		    
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function validateChain() As string
		  dim sa as string
		  dim k as integer
		  var jBlock as integer
		  
		  sa="OK"
		  if prevDataQueryItem<>nil then sa=prevDataQueryItem.validateChain
		  
		  if sa="OK" then
		    k=0
		    for jBlock =0 to maxitems
		      if sBlockName(jBlock)<>"" then
		        k=k+1
		      end  if
		      
		    next
		    
		    if k=0 then sa="No definition in Pivot step "+me.Title
		    
		  end if
		  
		  if sa="OK" then
		    if not anyInChain(StepTypes.GroupSplit) then sa="Missing Group/Split step before pivot step"
		  end if
		  
		  return sa
		  
		End Function
	#tag EndMethod


	#tag Note, Name = Example query with CTE
		with block0 as (select distinct customercode  from currentsales) ,
		block1 as (select customercode, yearorder, total, quantity from currentsales)
		select block0.customercode customercode_1, b1.total total2021, b1.quantity quantity2021, b2.total total2022, b2. quantity quantity2022 from block0
		left join (select customercode,  total , quantity  from block1 where yearorder=2021) b1 on block0.customercode = b1.customercode
		left join (select customercode,  total , quantity  from block1 where yearorder=2022) b2 on block0.customercode = b2.customercode
		
		
		block1 create to avoid repeating its datasource
		
		
	#tag EndNote


	#tag Property, Flags = &h0
		bInUse(maxItems) As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		nextItem As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		sBlockName(maxItems) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		sConst(maxFields,maxItems) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		sField(maxFields) As string
	#tag EndProperty

	#tag Property, Flags = &h0
		sFieldType(maxItems) As InternalFieldTypes
	#tag EndProperty


	#tag Constant, Name = maxFields, Type = Integer, Dynamic = False, Default = \"3", Scope = Public
	#tag EndConstant

	#tag Constant, Name = maxItems, Type = Integer, Dynamic = False, Default = \"6", Scope = Public
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
			Name="nextItem"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
