#tag Module
Protected Module CommonDIalogs
	#tag Method, Flags = &h0
		Function ConfirmDialog(DialogTitle as string, Message as string, OkText as string, paramarray param as string) As Boolean
		  
		  var btn as MessageDialogButton
		  
		  var dlg as new MessageDialog
		  
		  dlg.IconType = MessageDialog.IconTypes.Question
		  
		  dlg.Title = TextWithDefault(DialogTitle.Trim, "Confirm")
		  
		  dlg.Message = PrepareMessage(message, param)
		  
		  dlg.ActionButton.Caption = TextWithDefault(OkText.trim, "Ok")
		  dlg.ActionButton.Visible = True
		  dlg.CancelButton.Visible = True               
		  dlg.AlternateActionButton.Visible = False
		  
		  btn = dlg.ShowModal
		  
		  return btn = dlg.ActionButton
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ErrorDialog(DialogTitle as string, Message as string, OkText as string, paramarray param as string)
		  
		  var dlg as new MessageDialog
		  
		  dlg.IconType = MessageDialog.IconTypes.Stop
		  
		  dlg.Title = TextWithDefault(DialogTitle.Trim, "Confirm")
		  
		  dlg.Message = PrepareMessage(message, param)
		  
		  dlg.ActionButton.Caption = TextWithDefault(OkText.trim, "Ok")
		  dlg.ActionButton.Visible = True
		  dlg.CancelButton.Visible = false               
		  dlg.AlternateActionButton.Visible = False
		  
		  call dlg.ShowModal
		  
		  return 
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PrepareMessage(Message as string, params() as string) As string
		  
		  var msg as string = message
		  
		  for i as integer = 0 to params.LastIndex
		    msg = msg.ReplaceAll("%"+str(i), params(i))
		    
		  next
		  
		  return msg
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TextWithDefault(MainText as string, DefaultText as string) As string
		  
		  if MainText.Trim.Length = 0 then 
		    return DefaultText.Trim
		    
		  else
		    return MainText.Trim
		    
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WarningDialog(DialogTitle as string, Message as string, OkText as string, paramarray param as string)
		  
		  var dlg as new MessageDialog
		  
		  dlg.IconType = MessageDialog.IconTypes.Caution
		  
		  dlg.Title = TextWithDefault(DialogTitle.Trim, "Confirm")
		  
		  dlg.Message = PrepareMessage(message, param)
		  
		  dlg.ActionButton.Caption = TextWithDefault(OkText.trim, "Ok")
		  dlg.ActionButton.Visible = True
		  dlg.CancelButton.Visible = False               
		  dlg.AlternateActionButton.Visible = False
		  
		  call dlg.ShowModal
		  
		  return 
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function WarningDialogWithConfirmation(DialogTitle as string, Message as string, OkText as string, paramarray param as string) As Boolean
		  
		  var dlg as new MessageDialog
		  var btn as MessageDialogButton
		  
		  dlg.IconType = MessageDialog.IconTypes.Caution
		  
		  dlg.Title = TextWithDefault(DialogTitle.Trim, "Confirm")
		  
		  dlg.Message = PrepareMessage(message, param)
		  
		  dlg.ActionButton.Caption = TextWithDefault(OkText.trim, "Ok")
		  dlg.ActionButton.Visible = True
		  dlg.CancelButton.Visible = True               
		  dlg.AlternateActionButton.Visible = False
		  
		  btn = dlg.ShowModal
		  
		  return btn = dlg.ActionButton
		  
		  
		End Function
	#tag EndMethod


End Module
#tag EndModule
