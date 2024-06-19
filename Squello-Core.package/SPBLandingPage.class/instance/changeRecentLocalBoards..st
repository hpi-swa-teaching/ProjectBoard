backgroundLogic
changeRecentLocalBoards: lastLocalBoard

	RecentLocalBoards addFirst: lastLocalBoard.
	
	(RecentLocalBoards size > self class numberOfRecentLocalBoards) 
		ifTrue: [RecentLocalBoards removeLast.].
		
	