#tag Class
Protected Class clDataQueryFlow
Inherits clAutomatorFlow
	#tag Method, Flags = &h0
		Function calcStep(theItem as integer) As clDataQueryItem_Generic
		  
		  return clDataQueryItem_Generic(items(theItem))
		   
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		  if StepTypeLabels = nil then CreateStepTypeLabels
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Sub CreateStepTypeLabels()
		  
		  
		  StepTypeLabels = new Dictionary
		  
		  StepTypeLabels.value(StepTypes.Generic) ="Generic"
		  
		  
		  StepTypeLabels.value(StepTypes.Calculate) ="Calc"
		  
		  StepTypeLabels.value(StepTypes.Filter) = "Filter"
		  
		  StepTypeLabels.value(StepTypes.GroupSplit) ="Group/Split"
		  
		  StepTypeLabels.value(StepTypes.Map) = "Map"
		  
		  StepTypeLabels.value(StepTypes.Pivot) = "Pivot"
		  
		  StepTypeLabels.value(StepTypes.Start) = "Start"
		  StepTypeLabels.value(StepTypes.Sort) = "Sort"
		   
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function doAdd(itemType as String) As clAutomatorItem
		  // Calling the overridden superclass method.
		  
		  var lastItem as clDataQueryItem_Generic  = nil
		  
		  if self.Items.Count > 0 then lastItem = clDataQueryItem_Generic(self.Items(self.items.LastIndex))
		  
		  Var returnValue as clDataQueryItem_Generic = clDataQueryItem_Generic(Super.doAdd(itemType))
		  
		  returnValue.prevCalcStep = lastItem
		  
		  Return returnValue
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub doClear()
		  // Calling the overridden superclass method.
		  Super.doClear()
		  
		  // Add the required steps
		  for each t as string in RequiredStepTypes
		    call self.doAdd (t)
		    
		  next
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function doInsertAfter(itemType as String, InsertAfterSteIp as integer) As clAutomatorItem
		  // Calling the overridden superclass method.
		  
		  var BeforeItem as clDataQueryItem_Generic
		  var AfterItem as clDataQueryItem_Generic
		  
		  BeforeItem = clDataQueryItem_Generic(FindItemWithId(InsertAfterSteIp))
		  
		  AfterItem = clDataQueryItem_Generic(FindItemWithId(InsertAfterSteIp+1))
		  
		  Var returnValue as clDataQueryItem_Generic = clDataQueryItem_Generic(Super.doInsertAfter(itemType, InsertAfterSteIp))
		  
		  returnValue.prevCalcStep = BeforeItem
		  
		  if AfterItem <> nil then AfterItem.prevCalcStep = returnValue
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DoRemoveLast()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getSqlStatement() As string
		  var s as string
		  
		  
		  var AddDummyGroupby as Boolean
		   
		  AddDummyGroupby = True
		  
		  for each gitem as clAutomatorItem in self.Items
		    if gitem isa clDataQueryItem_GroupSplit then AddDummyGroupby = false
		    
		  next
		  
		  if AddDummyGroupby then call doAdd("Group/Split")
		  
		  UpdateDataFlow
		  
		  s=calcStep(items.LastIndex).getSql
		  
		  if AddDummyGroupby then 
		    doRemove items.LastIndex
		    
		  end if
		  
		  return s
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function LabelToStepType(StepLabel as string) As StepTypes
		  
		  if StepTypeLabels = nil then CreateStepTypeLabels
		  
		  for each k as StepTypes in StepTypeLabels.keys
		    if StepTypeLabels.Value(k) = StepLabel then return k
		    
		  next
		  
		  Return StepTypes.Generic
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadFromTextFile(theTextFilename as string)
		  clAutomatorFlow.LoadFromTextFile theTextFilename
		  UpdateDataFlow
		  
		  Exception err as RuntimeException
		    // // err.cascade "clDataQueryFlow.LoadFromText"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ObjectFactory(StepLabel as String) As clautomatorItem
		  dim clc as clDataQueryItem_Generic
		  
		  select case LabelToStepType(StepLabel)
		    
		  case StepTypes.Generic
		    clc=new clDataQueryItem_Generic
		    
		  case StepTypes.Filter
		    clc=new clDataQueryItem_Filter
		    
		  case StepTypes.GroupSplit
		    clc=new clDataQueryItem_GroupSplit
		    
		  case StepTypes.Start
		    clc= new clDataQueryItem_Start
		    
		  case StepTypes.Sort
		    clc=new clDataQueryItem_Sort
		    
		  case StepTypes.Calculate
		    clc=new clDataQueryItem_Calc
		    
		  case StepTypes.Pivot
		    clc=new clDataQueryItem_pivot
		    
		  case StepTypes.Map
		    clc=new clDataQueryItem_Map
		    
		  case else
		    clc=nil
		    
		  end select
		   
		  
		  return clc
		  
		  Exception err as RuntimeException
		    // // err.cascade "clDataQueryFlow.ObjectFactory with "+str(ObjectType)
		    
		    
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub processLoadLine(clc as clDataQueryItem_Generic, theOpcode as integer, theParam as string)
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
		    // // err.cascade "clDataQueryFlow.processLoadedJSONLine"
		    
		    
		    
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function RequiredStepTypes() As String()
		  var ret() as string
		  
		  ret.Add("Start")
		  
		  return ret
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function StepTypeToLabel(type as StepTypes) As string
		  
		  return StepTypeLabels.Value(type)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateDataFlow()
		  var i  as integer
		  
		  var prevItem as clDataQueryItem_Generic
		  
		  for each gItem as clAutomatorItem in  Items
		    var item as clDataQueryItem_Generic = clDataQueryItem_Generic(gItem)
		    
		    i = i + 1
		    if item isa clDataQueryItem_Start then
		      item.numSeq = i
		      
		    else
		      item.numSeq = i
		      item.updateFieldsFromPred
		      
		    end 
		    
		    prevItem = item
		    
		  next
		   
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function validateChain() As string
		  dim n as integer
		  
		  n=ubound(items) ' just in case we added an item
		  
		  UpdateDataFlow
		  
		  return calcStep(n).validateChain
		  
		  
		  Exception err as RuntimeException
		    // // err.cascade "clDataQueryFlow.validateChain"
		    
		    
		End Function
	#tag EndMethod


	#tag Note, Name = OldCodes
		
		select case ObjectType 
		  case 100
		    clc=new clDataQueryItem_Generic
		    
		  case 200
		    clc=new clDataQueryItem_Filter
		    
		  case 300
		    clc=new clDataQueryItem_GroupSplit
		    
		  case 400
		    clc= new clDataQueryItem_Start
		    
		  case 500
		    clc=new clDataQueryItem_Sort
		    
		  case 600
		    clc=new clDataQueryItem_Calc
		    
		  case 700
		    clc=new clDataQueryItem_pivot
		    
		  case 800
		    clc=new clDataQueryItem_Map
		    
	#tag EndNote


	#tag Property, Flags = &h0
		Shared StepTypeLabels As Dictionary
	#tag EndProperty


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
