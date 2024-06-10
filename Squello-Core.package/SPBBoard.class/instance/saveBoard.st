updating
saveBoard
	
	SPBBoardSaver defaultSaver save: self as: self boardProvider repo.
	self isLocal 
	ifTrue: [
		SPBLandingPage changeRecentLocalBoards: self boardProvider repo.]
	ifFalse: [
		SPBLandingPage changeRecentGitHubBoards: {
			#name -> self boardName. 
			#url -> self url. 
			#repo -> self boardProvider repo} asDictionary.
		].