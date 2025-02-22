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
		Sub Constructor(Project as clDataQueryProject, SourceJSON as JSONItem)
		  // Calling the overridden superclass constructor.
		  
		  
		  self.SourceProject = Project
		  
		  if StepTypeLabels = nil then CreateStepTypeLabels
		  
		  Super.Constructor(SourceJSON)
		  
		  
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
		Function doAdd(itemType as String, SourceJSON as JSONItem) As clAutomatorItem
		  // Calling the overridden superclass method.
		  
		  var lastItem as clDataQueryItem  = nil
		  
		  if self.Items.Count > 0 then lastItem = clDataQueryItem(self.Items(self.items.LastIndex))
		  
		  Var returnValue as clDataQueryItem = clDataQueryItem(Super.doAdd(itemType, SourceJSON))
		  
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
		    call self.doAdd (t, nil)
		    
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
		Function getSqlStatement(lastItemId as integer) As string
		  
		  
		  var tempItems() as clAutomatorItem
		  
		  
		  var hasGroupBy as Boolean = False
		  
		  var haltCopy as Boolean = False
		  var lastItem as clDataQueryItem  = nil
		  
		  for each item as clAutomatorItem in self.Items
		    
		    if not haltCopy then
		      tempItems.Add(item)
		      
		      haltCopy = (item.GetID = lastItemId)
		      
		      lastItem = clDataQueryItem(item)
		      
		      if lastItem isa clDataQueryItem_GroupSplit then hasGroupBy = True
		      
		    end if
		    
		  next
		  
		  if tempItems.Count <= 0 then return ""
		  
		  UpdateDataFlow(tempItems)
		  
		  
		  if not hasGroupBy then 
		    var temp as clDataQueryItem = clDataQueryItem(self.ObjectFactory(cStepGroupSplit, nil))
		    
		    temp.numSeq = lastItem.numSeq + 1
		    temp.prevDataQueryItem = lastItem
		    temp.updateFieldsFromPred
		    
		    lastItem = temp
		    
		  else
		    
		  end if
		  
		  return  lastItem.getSql(True)
		   
		  
		  
		   
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getSqlStatement1() As string
		  var s as string
		  
		  
		  var AddDummyGroupby as Boolean
		  
		  AddDummyGroupby = True
		  
		  
		  for each gitem as clAutomatorItem in self.Items
		    if gitem isa clDataQueryItem_GroupSplit then AddDummyGroupby = false
		    
		  next
		  
		  if AddDummyGroupby then call doAdd(cStepGroupSplit, nil)
		  
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
		Function ObjectFactory(ObjectType as String, SourceJSON as JSONItem) As clAutomatorItem
		  
		  dim clc as clDataQueryItem
		  
		  select case LabelToStepType(ObjectType)
		    
		  case StepTypes.Generic
		    clc=new clDataQueryItem(SourceJSON)
		    
		  case StepTypes.Filter
		    clc=new clDataQueryItem_Filter(SourceJSON)
		    
		  case StepTypes.GroupSplit
		    clc=new clDataQueryItem_GroupSplit(SourceJSON)
		    
		  case StepTypes.Start 
		    var cls as new clDataQueryItem_Start(SourceProject) // this one does not require the source JSON
		    clc = cls
		    
		  case StepTypes.Sort
		    clc=new clDataQueryItem_Sort(SourceJSON)
		    
		  case StepTypes.Calculate
		    clc=new clDataQueryItem_Calc(SourceJSON)
		    
		  case StepTypes.Pivot
		    clc=new clDataQueryItem_pivot(SourceJSON)
		    
		  case StepTypes.Map
		    clc=new clDataQueryItem_Map(SourceJSON)
		    
		  case else
		    clc=nil
		    
		  end select
		  
		  return clc
		  
		  
		  
		  
		End Function
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
		  
		  self.UpdateDataFlow(self.items)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UpdateDataFlow(flowItems() as clAutomatorItem)
		  var i  as integer
		  
		  var prevItem as clDataQueryItem
		  
		  for each gItem as clAutomatorItem in  flowItems
		    var item as clDataQueryItem = clDataQueryItem(gItem)
		    
		    i = i + 1
		    
		    item.numSeq = i
		    item.updateFieldsFromPred
		    
		    prevItem = item
		    
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function validateChain() As string
		  dim n as integer
		  
		  n=ubound(items) ' just in case we added an item
		  
		  UpdateDataFlow(self.Items)
		  
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
		#tag ViewProperty
			Name="Filename"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
