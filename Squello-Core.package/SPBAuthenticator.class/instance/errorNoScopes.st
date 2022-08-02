errors
errorNoScopes
	
	UserDialogBoxMorph 
		inform: 'Make sure the token has repo or public_repo scope' title: 'Operation cancelled'.
	SPBGithubAPI token: nil.
	^ Error signal.