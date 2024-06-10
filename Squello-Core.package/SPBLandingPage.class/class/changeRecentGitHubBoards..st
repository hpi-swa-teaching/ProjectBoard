recentboards
changeRecentGitHubBoards: lastGitHubBoard
	
	RecentGitHubBoards removeAllSuchThat: [:each| each = lastGitHubBoard].
	RecentGitHubBoards addFirst: lastGitHubBoard.
	
	(RecentGitHubBoards size > self numberOfRecentGitHubBoards) 
		ifTrue: [RecentGitHubBoards removeLast.].
		