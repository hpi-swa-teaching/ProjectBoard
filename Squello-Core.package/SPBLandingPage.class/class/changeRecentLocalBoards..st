recentboards
changeRecentLocalBoards: lastLocalBoard

	self RecentLocalBoards removeAllSuchThat: [:each| each = lastLocalBoard].
 	self RecentLocalBoards addFirst: lastLocalBoard.
	 
	(self RecentLocalBoards size > self numberOfRecentLocalBoards) 
		ifTrue: [self RecentLocalBoards removeLast.].
		