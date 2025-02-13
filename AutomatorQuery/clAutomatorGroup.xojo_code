#tag Class
Protected Class clAutomatorGroup
	#tag Method, Flags = &h0
		Sub Constructor()
		  
		  doClear
		  lastStepId=0
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function doAdd(itemType as integer) As integer
		  dim p as clAutomatorItem
		  dim n as integer
		  
		  p=ObjectFactory(itemType)
		  
		  if p<>nil  then
		    lastStepId=lastStepId+1
		    n=1+ubound(items)
		    redim items(n)
		    
		    items(n)=p
		    items(n).Title="Step"+Format(lastStepId,"000000")
		    items(n).ItemType=itemType
		    items(n).workarea=1
		    
		    doSelect n
		  end if
		  
		  return  n
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub doClear()
		  redim Items(0)
		  items(0)=nil
		  
		  ' 
		  ' should add a start item here
		  '
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub doEdit(theItem as integer)
		  
		  items(theItem).open
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub doMoveBeforeItem(moveItem as integer, moveBeforeItem as integer)
		  dim i as integer
		  dim j as integer
		  dim tmp as clAutomatorItem
		  
		  'ItemStatus.Insert moveBeforeItem
		  
		  if moveitem<moveBeforeItem then
		    tmp=Items(moveItem)
		    for i=moveitem to moveBeforeItem-2
		      items(i)=items(i+1)
		    next
		    items(moveBeforeItem-1)=tmp
		    doSelect moveBeforeItem-1
		    
		  else 'moveitem>movebeforeitem
		    tmp=Items(moveItem)
		    for i=moveitem DownTo moveBeforeItem+1
		      items(i)=items(i-1)
		    next
		    items(moveBeforeItem)=tmp
		    doSelect moveBeforeItem 
		    
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub doRemove(theItem as integer)
		  items.remove theItem
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub doSelect(theItem as integer)
		  dim i as integer
		  for i=1 to ubound(items)
		    items(i).selected=(i=theItem)
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetTitle(theItem as integer) As string
		  return items(theItem).getTitle
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function getType(theItem as integer) As string
		  return items(theItem).getType
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Itemcount() As integer
		  return ubound(items)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadFromTextFile(theTextFilename as string)
		  dim txtin as TextInputStream
		  
		  dim n as integer
		  dim m as integer
		  dim mTyp as integer
		  
		  dim i as integer
		  dim j as integer
		  
		  dim s as string
		  dim clc as clAutomatorItem
		  
		  dim kk as integer
		  dim kv as integer
		  dim kz as integer
		  
		  dim mxk as integer
		  dim mxv as integer
		  
		  txtin=GetFolderItem(theTextFileName).OpenAsTextFile
		  
		  s=txtin.ReadLine 'read signature
		  
		  if s=clAutomatorGroup.cSignature then
		    
		    doClear
		    
		    while not txtin.eof
		      s=txtin.Readline
		      
		      s=trim(s)
		      n=val(NthField(s,";",1))
		      i=InStr(s,";")
		      s=mid(s,i+1,9999)
		      
		      select case n
		        
		      case 1 ' mark the start of a new object
		        
		      case 2 ' obtain object type from param
		        mTyp=val(s)
		        kk=0
		        kv=0
		        
		        kz=doAdd(mTyp)
		        clc=items(kz)
		        
		      case 3 ' name
		        
		        if clc<>nil then clc.Title=s
		        
		      case 50 ' object personal data
		        if clc<>nil then clc.processLoad s
		        
		        
		      case 60 'query name
		        GroupName=s
		        
		      case 70 'lastIdStep
		        lastStepId=val(s)
		        
		        
		        
		      case else
		        ProcessLoadLine  clc,n,s
		      end select
		    wend
		  else
		    '
		    ' here if invalid signature
		    '
		    MessageBox( "Invalid file signature")
		    
		  end if
		  txtin.close
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ObjectFactory(ObjectType as integer) As clAutomatorItem
		  dim p as clAutomatorItem
		  p=new clAutomatorItem
		  
		  return p
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ProcessLoadLine(clc as clAutomatorItem,theOpcode as integer, theParam as string)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SaveToTextFile(theTextFilename as string)
		  dim txtout as TextOutputStream
		  
		  dim n as integer
		  dim i as integer
		  
		  txtout=GetFolderItem(theTextFileName).CreateTextFile
		  txtout.writeline  clAutomatorGroup.cSignature
		  n=Itemcount
		  
		  for i=1 to n
		    txtout.writeline "1;0"
		    
		    if Items(i)<>nil then 
		      txtout.writeline "2;"+str(items(i).ItemType)
		      txtout.writeline "3;"+items(i).getTitle
		      Items(i).saveToTextFile txtout
		    end if
		    
		  next
		  
		  txtout.writeline "60;"+groupname
		  
		  txtout.writeline "70;"+str(lastStepId)
		  
		  txtout.close
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function selected(theItem as integer) As boolean
		  return items(theitem).selected
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function visibleStatus(theItem as integer) As integer
		  return items(theitem).workarea
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub VisibleStatus(theItem as integer, assigns n as integer)
		  items(theItem).workarea=n
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		GroupName As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Items(0) As clAutomatorItem
	#tag EndProperty

	#tag Property, Flags = &h0
		lastStepId As integer
	#tag EndProperty


	#tag Constant, Name = cSignature, Type = String, Dynamic = False, Default = \"AUTOSQL", Scope = Public
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
	#tag EndViewBehavior
End Class
#tag EndClass
