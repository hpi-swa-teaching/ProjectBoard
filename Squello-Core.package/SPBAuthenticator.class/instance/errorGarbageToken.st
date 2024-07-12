errors
errorGarbageToken	
	
	UserDialogBoxMorph 
		inform: 'Not a valid token' title: 'Operation canceled'.
	self class token: nil.
	^ Error signal.