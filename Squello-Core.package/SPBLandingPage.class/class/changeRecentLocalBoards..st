recentboards
changeRecentLocalBoards: lastLocalBoard

	RecentLocalBoards addFirst: lastLocalBoard.
	
	(RecentLocalBoards size > self numberOfRecentLocalBoards) 
		ifTrue: [RecentLocalBoards removeLast.].
		