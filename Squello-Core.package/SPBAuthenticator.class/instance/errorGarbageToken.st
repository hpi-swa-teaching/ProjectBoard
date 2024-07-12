errors
errorGarbageToken	
	
	UserDialogBoxMorph 
		inform: 'Not a valid token' title: 'Operation canceled'.
	SPBAuthenticator token: nil.
	^ Error signal.