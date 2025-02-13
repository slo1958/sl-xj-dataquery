#tag Class
Protected Class clOneRanking
Inherits clAutomatorGroup
	#tag Method, Flags = &h0
		Function calcStep(theItem as integer) As clCalcStep_Generic
		  return clCalcStep_Generic(items(theItem))
		  
		  
		  Exception err as RuntimeException
		    // // err.cascade "clOneRanking.calcStep  called with "+str(theItem)
		    
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getSqlStatement() As string
		  dim n as integer
		  dim i as integer
		  dim s as string
		  dim tdel as integer
		  
		  dim b as boolean
		  
		  n=ubound(items)
		  
		  i=1
		  b=false
		  while i<=n and not b
		    if items(i) isa clCalcStep_GroupSplit then b=true
		    i=i+1
		  wend
		  
		  
		  tdel=-1
		  if not b then tdel=doAdd(300)
		  
		  n=ubound(items) ' just in case we added an item
		  
		  UpdateDataFlow
		  
		  s=calcStep(n).getSql
		  
		  if tdel>0 then doRemove tdel
		  
		  return s
		  Exception err as RuntimeException
		    // // err.cascade "clOneRanking.getSqlStatement"
		    
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadFromTextFile(theTextFilename as string)
		  clAutomatorGroup.LoadFromTextFile theTextFilename
		  UpdateDataFlow
		  
		  Exception err as RuntimeException
		    // // err.cascade "clOneRanking.LoadFromText"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ObjectFactory(ObjectType as integer) As clautomatorItem
		  dim clc as clCalcStep_Generic
		  
		  select case ObjectType 
		  case 100
		    clc=new clCalcStep_Generic
		    
		  case 200
		    clc=new clCalcStep_Filter
		    
		  case 300
		    clc=new clCalcStep_GroupSplit
		    
		  case 400
		    clc= new clCalcStep_Start
		    
		  case 500
		    clc=new clCalcStep_Sort
		    
		  case 600
		    clc=new clCalcStep_Calc
		    
		  case 700
		    clc=new clCalcStep_pivot
		    
		  case 800
		    clc=new clCalcStep_Map
		    
		  case else
		    clc=nil
		    
		  end select
		  
		  if clc<>nil then clc.ItemType=ObjectType
		  
		  return clc
		  
		  Exception err as RuntimeException
		    // // err.cascade "clOneRanking.ObjectFactory with "+str(ObjectType)
		    
		    
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub processLoadLine(clc as clCalcStep_Generic,theOpcode as integer, theParam as string)
		  dim m as integer
		  dim s as string
		  
		  s=theParam
		  
		  select case theOpcode
		    
		  case 4 'nb key fields
		    m=val(s)
		    if clc<>nil then redim clc.keyFields(0)
		    
		  case 5 ' a key field
		    m=ubound(clc.keyFields)+1
		    redim clc.keyFields(m)
		    if clc<>nil then clc.keyFields(m)=s
		    
		    
		  case 6 'nb val fields
		    m=val(s)
		    if clc<>nil then redim clc.valueFields(0)
		    
		  case 7 'a value field
		    m=ubound(clc.valueFields)+1
		    redim clc.valueFields(m)
		    if clc<>nil then clc.valueFields(m)=s
		    
		    
		  case 9 ' link to next by name
		    if clc<>nil then clc.tmp=s
		    'if mtyp=400 then intSteps(1).tmp=s 'this is 'start'
		    
		  case 10 ' x pos
		    m=val(s)
		    'if clc<>nil then clc.xCenter=m
		    
		  case 11 ' y pos
		    m=val(s)
		    'if clc<>nil then clc.yPos=m
		    
		    
		  case else
		    
		  end select
		  
		  Exception err as RuntimeException
		    // // err.cascade "clOneRanking.ProcessLoadLine"
		    
		    
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateDataFlow()
		  dim i as integer
		  if ubound(items)>0 then
		    
		    calcStep(1).prevCalcStep=nil
		    
		    for i=2 to ubound(items)
		      calcStep(i).ResetData
		      calcStep(i).prevCalcStep=calcStep(i-1)
		    next
		    
		    for i=1 to ubound(items)
		      calcStep(i).numSeq=i
		      calcStep(i).UpdateFieldsFromPred
		    next
		    
		  end if
		  
		  Exception err as RuntimeException
		    // // err.cascade "clOneRanking.UpdateDataFlow when "+str(i)+"/"+str(ubound(items))
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function validateChain() As string
		  dim n as integer
		  
		  n=ubound(items) ' just in case we added an item
		  
		  UpdateDataFlow
		  
		  return calcStep(n).validateChain
		  
		  
		  Exception err as RuntimeException
		    // // err.cascade "clOneRanking.validateChain"
		    
		    
		End Function
	#tag EndMethod


	#tag ViewBehavior
		#tag ViewProperty
			Name="GroupName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="lastStepId"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="integer"
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
	#tag EndViewBehavior
End Class
#tag EndClass
