actions
deleteBoardFromButton: aString

	SPBBoardSaver defaultSaver delete: aString.
	self updateUI.