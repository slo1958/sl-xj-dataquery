#tag Class
Protected Class clDataQueryFlow
Inherits clAutomatorFlow
	#tag Method, Flags = &h0
		Sub Constructor(Project as clDataQueryProject)
		  // Calling the overridden superclass constructor.
		  
		  self.SourceProject = Project
		  
		  if StepTypeLabels = nil then CreateStepTypeLabels
		  
		  Super.Constructor
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Sub CreateStepTypeLabels()
		  
		  
		  StepTypeLabels = new Dictionary
		  
		  StepTypeLabels.value(StepTypes.Generic) = cStepGeneric
		  
		  StepTypeLabels.value(StepTypes.Calculate) = cStepCalc
		  
		  StepTypeLabels.value(StepTypes.Filter) = cStepFilter
		  
		  StepTypeLabels.value(StepTypes.GroupSplit) = cStepGroupSplit
		  
		  StepTypeLabels.value(StepTypes.Map) = cStepMap
		  
		  StepTypeLabels.value(StepTypes.Pivot) = cStepPivot
		  
		  StepTypeLabels.value(StepTypes.Start) = cStepStart
		  StepTypeLabels.value(StepTypes.Sort) = cStepSort
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DataQueryItem(theItem as integer) As clDataQueryItem
		  
		  return clDataQueryItem(items(theItem))
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function doAdd(itemType as String) As clAutomatorItem
		  // Calling the overridden superclass method.
		  
		  var lastItem as clDataQueryItem  = nil
		  
		  if self.Items.Count > 0 then lastItem = clDataQueryItem(self.Items(self.items.LastIndex))
		  
		  Var returnValue as clDataQueryItem = clDataQueryItem(Super.doAdd(itemType))
		  
		  returnValue.prevDataQueryItem = lastItem
		  
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
		  
		  var BeforeItem as clDataQueryItem
		  var AfterItem as clDataQueryItem
		  
		  BeforeItem = clDataQueryItem(FindItemWithId(InsertAfterSteIp))
		  
		  AfterItem = clDataQueryItem(FindItemWithId(InsertAfterSteIp+1))
		  
		  Var returnValue as clDataQueryItem = clDataQueryItem(Super.doInsertAfter(itemType, InsertAfterSteIp))
		  
		  returnValue.prevDataQueryItem = BeforeItem
		  
		  if AfterItem <> nil then AfterItem.prevDataQueryItem = returnValue
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub doRemove(theItem as integer)
		  // Calling the overridden superclass method.
		  
		  Super.doRemove(theItem)
		  
		  // Refresh links
		  
		  var previous as clDataQueryItem  = nil
		  
		  for each item as clAutomatorItem in self.items
		    
		    var dqItem as clDataQueryItem = clDataQueryItem(item)
		    
		    dqItem.prevDataQueryItem = previous
		    
		    previous = dqItem
		    
		  next
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DoRemoveLast()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function FlowDataSource() As String
		  
		  
		  return self.SourceProject.GetDataSourceName
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetFlowName() As string
		  
		  
		  for each item as clAutomatorItem in self.Items
		    var DQItem as clDataQueryItem = clDataQueryItem(item)
		    
		    if DQItem.GetTypeAsEnum = StepTypes.Start then
		      return DQItem.getTitle
		      
		    end if
		    
		  next
		  
		  return super.GetFlowName
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetJSON() As JSONItem
		  
		  var JMaster as  JSONItem = super.GetJSON
		  
		  var jItems as new JSONItem
		  
		  JMaster.Compact = False
		  
		  for each item as clAutomatorItem in self.Items
		    var DQItem as clDataQueryItem = clDataQueryItem(item)
		    var JItem as new JSONItem
		    
		    JItem.Value(cJSONTagExternalStepType) = DQItem.GetTypeAsString
		    JItem.Value(cJSONTagIndex) = DQItem.ID.ToString
		    JItem.value(cJSONTagConfig) = DQItem.GetConfigJSON()
		    
		    jItems.add(jItem)
		    
		  next
		  
		  JMaster.Value(cJSONTagItems) = jItems
		  
		  return jMaster
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function GetListOfSteps() As string()
		  if StepTypeLabels = nil then CreateStepTypeLabels
		  
		  var list() as string
		  for each k as StepTypes in StepTypeLabels.keys
		    
		    if k = StepTypes.Generic then 
		      
		    elseif k = StepTypes.Start then
		      
		    else
		      list.Add(StepTypeLabels.Value(k) )
		      
		    end if
		    
		  next
		  
		  return list
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getSqlStatement() As string
		  var s as string
		  
		  
		  var AddDummyGroupby as Boolean
		  
		  AddDummyGroupby = True
		  
		  
		  for each gitem as clAutomatorItem in self.Items
		    if gitem isa clDataQueryItem_GroupSplit then AddDummyGroupby = false
		    
		  next
		  
		  if AddDummyGroupby then call doAdd(cStepGroupSplit)
		  
		  UpdateDataFlow
		  
		  s=DataQueryItem(items.LastIndex).getSql(True)
		  
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
		  dim clc as clDataQueryItem
		  
		  select case LabelToStepType(StepLabel)
		    
		  case StepTypes.Generic
		    clc=new clDataQueryItem
		    
		  case StepTypes.Filter
		    clc=new clDataQueryItem_Filter
		    
		  case StepTypes.GroupSplit
		    clc=new clDataQueryItem_GroupSplit
		    
		  case StepTypes.Start
		    var cls as new clDataQueryItem_Start(SourceProject)
		    clc = cls
		    
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
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub processLoadLine(clc as clDataQueryItem, theOpcode as integer, theParam as string)
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
		  
		  ret.Add(cStepStart)
		  
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
		  
		  var prevItem as clDataQueryItem
		  
		  for each gItem as clAutomatorItem in  Items
		    var item as clDataQueryItem = clDataQueryItem(gItem)
		    
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
		  
		  return DataQueryItem(n).validateChain
		  
		  
		  Exception err as RuntimeException
		    // // err.cascade "clDataQueryFlow.validateChain"
		    
		    
		End Function
	#tag EndMethod


	#tag Note, Name = OldCodes
		
		select case ObjectType 
		  case 100
		    clc=new clDataQueryItem
		    
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
		Filename As String
	#tag EndProperty

	#tag Property, Flags = &h0
		SourceProject As clDataQueryProject
	#tag EndProperty

	#tag Property, Flags = &h0
		Shared StepTypeLabels As Dictionary
	#tag EndProperty


	#tag Constant, Name = cJSONTagConfig, Type = String, Dynamic = False, Default = \"configuration", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cJSONTagExternalStepType, Type = String, Dynamic = False, Default = \"type", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cJSONTagIndex, Type = String, Dynamic = False, Default = \"itemIndex", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cJSONTagItems, Type = String, Dynamic = False, Default = \"items", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cStepCalc, Type = String, Dynamic = False, Default = \"Calc", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cStepFilter, Type = String, Dynamic = False, Default = \"Filter", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cStepGeneric, Type = String, Dynamic = False, Default = \"Generic", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cStepGroupSplit, Type = String, Dynamic = False, Default = \"Group/Split", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cStepMap, Type = String, Dynamic = False, Default = \"Map measures", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cStepPivot, Type = String, Dynamic = False, Default = \"Pivot", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cStepSort, Type = String, Dynamic = False, Default = \"Sort", Scope = Public
	#tag EndConstant

	#tag Constant, Name = cStepStart, Type = String, Dynamic = False, Default = \"Start", Scope = Public
	#tag EndConstant


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
