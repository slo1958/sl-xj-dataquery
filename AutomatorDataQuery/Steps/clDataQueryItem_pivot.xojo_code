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
		  
		  sJoinType(0)=" INNER JOIN "
		  sJoinType(1)=" LEFT JOIN "
		  iJoinType=0
		  
		End Sub
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
		Function GetSql() As string
		  
		  dim sSource as string
		  dim sPostFix as string
		  dim blockSql(maxItems) as string
		  var i  as integer
		  var jBlock as integer
		  var jField as integer
		  dim sWhere as string
		  dim sSep as string
		  dim sOutput as string
		  
		  dim s as string
		  
		  if prevDataQueryItem<>nil then 
		    sSource=prevDataQueryItem.getSql
		    sPostFix=prevDataQueryItem.fieldPostFix
		  else
		    ssource=""
		    sPostFix=""
		  end if
		  
		  for i=0 to maxItems
		    blocksql(i)=""
		  next
		  
		  
		  soutput=""
		  
		  if sPostFix<>"" then
		    '
		    ' identify remaining key fields
		    '
		    Build_Remaining_KeyFields
		    
		    
		    
		    '
		    ' build each subquery, using original postfix
		    '
		    for jBlock =0 to maxitems  
		      if sBlockName(jBlock)<>"" then
		        s="(select * from ("+ssource+")"
		        
		        
		        swhere=" where "
		        ssep=""
		        
		        for jfield=1 to 3
		          if (sconst(jfield,jblock)<>"") and (sField(jField)<>cNotUsed)  then
		            s=s+ swhere + ssep+"("
		            s=s+sField(jfield)+"_"+sPostFix+"="
		            s=s+sconst(jfield,jblock)
		            s=s+")"
		            swhere=""
		            ssep=" and "
		          end if
		        next
		        
		        'if len(sgroup)>0 then s=s+" group by "+sgroup
		        
		        blockSql(jBlock)=s+") as   BLK_"+sBlockName(jblock)
		        
		      end if
		    next
		    
		    
		    '
		    ' build output list
		    '
		    ' note that all fields must be prefixed by the name of the source
		    '
		    ' the first source is the 'master'
		    '
		    
		    sOutput="select  "
		    '
		    ' extract non-involved key fields
		    '
		    ssep=""
		    for i=1 to keyFields.LastIndex
		      sOutput=sOutput+ssep+"BLK_"+sBlockName(0)+"."+keyFields(i)+"_"+sPostFix+" as "+keyFields(i)+"_"+fieldPostFix
		      ssep=","
		    next
		    
		    '
		    ' extract data fields from each block
		    '
		    
		    for jBlock=0 to maxItems
		      if sBlockName(jBlock)<>"" then
		        for i=1 to ubound(prevDataQueryItem.valueFields)
		          soutput=soutput+ssep+"BLK_"+sBlockName(jblock)+"."+prevDataQueryItem.valueFields(i)+"_"+sPostFix+" as " +_
		          prevDataQueryItem.valueFields(i)+"_"+sBlockName(jblock)+"_"+fieldPostFix
		          ssep=","
		        next
		      end if
		    next
		    
		    '
		    ' join them now 
		    '
		    soutput=soutput+" from "
		    s=blockSql(0)
		    
		    for jBlock=1 to maxitems 'not started from block 0 since block 0 is the "master" block
		      
		      if keyFields.LastIndex=0 then
		        
		        if blockSql(jBlock)<>"" then
		          s=s+","+blockSql(jBlock)
		        end if
		        
		      else
		        if blockSql(jBlock)<>"" then
		          s="("+s
		          s=s+sJoinType(iJoinType) +"  "+blockSql(jBlock)' +"  on  "
		          ssep=" on "
		          
		          for i=1 to keyFields.LastIndex
		            s=s+ssep+" (BLK_"+sBlockName(0)+"."+keyFields(i)+"_"+sPostFix+"= BLK_"+sBlockName(jBlock)+"."+keyFields(i)+"_"+sPostFix+")"
		            ssep=" and "
		          next
		          
		          
		          s=s+")"
		          
		        end if
		        
		      end if
		    next
		    '
		    ' include the record source
		    '
		    soutput=soutput+" "+s
		  end if
		  
		  return soutput
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetSql_InnerJoin() As string
		  dim sSource as string
		  dim sPostFix as string
		  var i ,jBlock,jField as integer
		  dim n as integer
		  dim s as string
		  dim sSep as string
		  dim sOSep as string
		  dim sWhere as string
		  dim sWhere2 as string
		  dim sGroup as string
		  
		  dim sPrFx as string
		  
		  dim sOutputFields as string
		  
		  dim blockSql(maxItems) as string
		  
		  MessageBox( "ubound keyfields (INNER) : " + str(keyFields.LastIndex))
		  
		  
		  if prevDataQueryItem<>nil then 
		    sSource=prevDataQueryItem.getSql
		    sPostFix=prevDataQueryItem.fieldPostFix
		  else
		    ssource=""
		    sPostFix=""
		  end if
		  
		  for i=0 to maxItems
		    blocksql(i)=""
		  next
		  
		  s=""
		  sOutputFields=""
		  
		  'ssource="XXX"   ' for debugging purposes only !!
		  
		  if sPostFix<>"" then
		    Build_Remaining_KeyFields 'update array keyfields (using list of keyfields from previous tep - keyfields used in pivoting)
		    
		    sPrFx=""
		    for i=0 to maxItems
		      if sBlockName(i)<>"" then
		        if sPrFx="" then sPrFx="blk_"+sBlockName(i)+"."
		      end if
		    next
		    
		    '
		    ' build list of 'final' output field
		    '
		    sosep=""
		    for i=1 to keyFields.LastIndex
		      sOutputFields=sOutputFields+soSep +sPrFx+keyFields(i)+"_"+fieldPostFix
		      soSep=","
		    next
		    
		    '
		    '
		    ' build sql statement for each block
		    '
		    for jBlock=0 to maxItems
		      if sBlockName(jblock)<>"" then
		        s="select  "   
		        sSep=""
		        sGroup=""
		        
		        for i=1 to keyFields.LastIndex
		          s=s+sSep + keyFields(i)+"_"+sPostFix +"  as "+keyFields(i)+"_"+fieldPostFix
		          sGroup=sgroup+sSep + keyFields(i)+"_"+sPostFix
		          sSep=","
		        next
		        
		        for i=1 to ubound(prevDataQueryItem.valueFields)
		          s=s+sSep+ prevDataQueryItem.valueFields(i)+"_"+sPostFix +" as "+prevDataQueryItem.valueFields(i)+"_"+sBlockName(jblock)+"_"+fieldPostFix
		          ssep=","
		          sOutputFields=sOutputFields+sosep+prevDataQueryItem.valueFields(i)+"_"+sBlockName(jblock)+"_"+fieldPostFix
		          sosep=","
		        next
		        
		        s=s+"  from ("+sSource+")"
		        
		        swhere=" where "
		        ssep=""
		        
		        for jfield=1 to 3
		          if (sconst(jfield,jblock)<>"") and (sField(jField)<>cNotUsed)  then
		            s=s+ swhere + ssep+"("
		            s=s+sField(jfield)+"_"+sPostFix+"="
		            s=s+sconst(jfield,jblock)
		            s=s+")"
		            swhere=""
		            ssep=" and "
		          end if
		        next
		        
		        'if len(sgroup)>0 then s=s+" group by "+sgroup
		        
		        blockSql(jBlock)=s
		      end if
		    next
		    
		    
		    '
		    ' build output query
		    '
		    s="select "+sOutputFields +" from "
		    ssep=""
		    for jblock=0 to maxitems
		      if blockSql(jblock)<>"" then s=s+" "+ssep+"  ("+blockSql(jblock)+") as blk_"+sBlockName(jblock)
		      ssep=","
		    next
		    
		    
		    '
		    ' skip block #0
		    '
		    sWhere2=""
		    ssep=""
		    for jblock=1 to maxitems
		      if sBlockName(jblock)<>"" then
		        
		        for i=1 to keyFields.LastIndex
		          sWhere2=sWhere2+ssep+ " ("
		          ssep=" and "
		          
		          sWhere2=sWhere2+"blk_"+sBlockName(jblock-1)
		          sWhere2=sWhere2+"."
		          sWhere2=sWhere2+keyFields(i)+"_"+fieldPostFix
		          sWhere2=sWhere2+" = "
		          sWhere2=sWhere2+"blk_"+sBlockName(jblock)
		          sWhere2=sWhere2+"."
		          sWhere2=sWhere2+keyFields(i)+"_"+fieldPostFix
		          
		          sWhere2=sWhere2+")"
		        next
		        
		        
		      end if
		    next
		    
		    if len(sWhere2)>0 then
		      s=s+" where "+swhere2
		    end if
		    
		    return s
		    
		  end if
		  
		  return s
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function getTextItem(theItem as integer) As string
		  dim s as string
		  
		  if iJoinType=1  and theItem=1 then s="(master key)"
		  
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
		    iJoinType=val(s)
		    
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
		  theOutput.writeline "50;14;"+str(iJoinType)
		  
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
		  var i  ,jBlock as integer
		  dim n as integer
		  dim s as string
		  
		  if prevDataQueryItem<>nil then
		    
		    Build_Remaining_KeyFields
		    
		    redim valueFields(0)
		    
		    for jBlock=0 to maxItems
		      if sBlockName(jblock)<>"" then
		        for i=1 to ubound(prevDataQueryItem.valueFields)
		          n=ubound(valueFields)+1
		          redim valueFields(n)
		          valueFields(n)=prevDataQueryItem.valueFields(i)+"_"+sBlockName(jblock)
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


	#tag Property, Flags = &h0
		bInUse(maxItems) As boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		iJoinType As integer
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

	#tag Property, Flags = &h0
		sJoinType(1) As string
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
		#tag ViewProperty
			Name="iJoinType"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
