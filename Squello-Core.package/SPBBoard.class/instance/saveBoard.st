updating
saveBoard
	
	self isLocal 
	ifTrue: [
		SPBLandingPage changeRecentLocalBoards: self boardProvider repo.
		SPBBoardSaver defaultSaver save: self asJson as: self boardProvider repo.]
	ifFalse: [
		SPBLandingPage changeRecentGitHubBoards: {
			#name -> self boardName. 
			#url -> self url. 
			#repo -> self boardProvider repo} asDictionary.
		].