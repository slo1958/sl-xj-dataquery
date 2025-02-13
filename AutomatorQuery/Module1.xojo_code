#tag Module
Protected Module Module1
	#tag Method, Flags = &h0
		Function ConfirmDialog(Message as String) As Boolean
		  
		  var w as new wnd_Confirm
		  w.setMessage(message)
		  
		  w.ShowModal
		  
		  return w.Confirmed
		  
		  
		End Function
	#tag EndMethod


End Module
#tag EndModule
