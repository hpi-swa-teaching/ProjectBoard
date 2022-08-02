errors
errorAuthenticationCanceled
	
	UserDialogBoxMorph 
		inform: 'Authentication dialog was dismissed' title: 'Operation canceled'.
	^ Error signal.