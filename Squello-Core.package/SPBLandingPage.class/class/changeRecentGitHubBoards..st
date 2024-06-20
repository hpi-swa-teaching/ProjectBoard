recentboards
changeRecentGitHubBoards: lastGitHubBoard
	
	self RecentGitHubBoards removeAllSuchThat: [:each| each = lastGitHubBoard].
	self RecentGitHubBoards addFirst: lastGitHubBoard.
	
	(self RecentGitHubBoards size > self numberOfRecentGitHubBoards) 
		ifTrue: [self RecentGitHubBoards removeLast.].
		