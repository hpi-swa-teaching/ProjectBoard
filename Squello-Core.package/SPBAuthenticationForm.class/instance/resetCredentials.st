actions
resetCredentials
	"Resets the username and token to nil to log out the user."
	
	self 
		username: nil;
		token: nil.
	UserDialogBoxMorph inform: 'Credentials have been reset.' title: 'Logged out'.