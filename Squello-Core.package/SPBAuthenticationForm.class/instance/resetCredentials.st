actions
resetCredentials
	"Resets the username and token to nil to log out the user."
	
	SPBAuthenticator
		username: nil;
		token: nil.
	UserDialogBoxMorph inform: 'Credentials have been reset.' title: 'Logged out'.
	self changed: #close.