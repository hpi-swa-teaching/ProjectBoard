initialize-release
errorInvalidUrl
	
	UserDialogBoxMorph 
		inform: 'Invalid repository Url or project does not exist' title: 'Operation canceled'.
	^ Error signal.