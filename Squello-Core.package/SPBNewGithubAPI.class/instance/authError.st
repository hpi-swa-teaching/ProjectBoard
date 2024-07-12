errors
authError

	UserDialogBoxMorph 
		inform: 'Please make sure that your token has a suffient scope for this project.' title: 'Insufficient token scope'.
	^ Error signal.