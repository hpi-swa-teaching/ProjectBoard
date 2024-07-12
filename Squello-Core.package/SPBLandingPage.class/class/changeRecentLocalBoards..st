recentboards
changeRecentLocalBoards: lastLocalBoard

	self RecentLocalBoards removeAllSuchThat: [:aRecentLocalBoard| aRecentLocalBoard = lastLocalBoard].
 	self RecentLocalBoards addFirst: lastLocalBoard.
	 
	(self RecentLocalBoards size > self numberOfRecentLocalBoards) 
		ifTrue: [self RecentLocalBoards removeLast.].
		