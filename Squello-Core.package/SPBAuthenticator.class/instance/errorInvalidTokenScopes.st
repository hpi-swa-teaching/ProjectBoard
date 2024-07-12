errors
errorInvalidTokenScopes
	
	UserDialogBoxMorph 
		inform: 'Invalid token or username or repository is private. Token has only public_repo scope' 
		title: 'Operation canceled'.
	self class token: nil.
	^ Error signal.