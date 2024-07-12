recentboards
changeRecentGitHubBoards: lastGitHubBoard
	
	self RecentGitHubBoards removeAllSuchThat: [:aRecentGitHubBoard| aRecentGitHubBoard = lastGitHubBoard].
	self RecentGitHubBoards addFirst: lastGitHubBoard.
	
	(self RecentGitHubBoards size > self numberOfRecentGitHubBoards) 
		ifTrue: [self RecentGitHubBoards removeLast.].
		