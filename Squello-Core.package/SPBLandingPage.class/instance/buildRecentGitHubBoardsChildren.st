toolbuilder
buildRecentGitHubBoardsChildren

	|children|
	children := ( self class RecentGitHubBoards collect: [:dictOfRecentBoard | self buildRecentGitHubBoardsButtonSpecWith: self usedBuilder withBoardInfo: dictOfRecentBoard] )asOrderedCollection.
	^ children.