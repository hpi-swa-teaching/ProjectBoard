recentboards
changeRecentLocalBoards: lastLocalBoard

	RecentLocalBoards removeAllSuchThat: [:each| each = lastLocalBoard].
	RecentLocalBoards addFirst: lastLocalBoard.
	
	(RecentLocalBoards size > self numberOfRecentLocalBoards) 
		ifTrue: [RecentLocalBoards removeLast.].
		