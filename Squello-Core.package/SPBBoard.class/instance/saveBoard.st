updating
saveBoard
	
	SPBBoardSaver defaultSaver save: self as: self boardProvider repo.
	self isLocal ifTrue: [
		SPBLandingPage changeRecentLocalBoards: self boardProvider repo.].