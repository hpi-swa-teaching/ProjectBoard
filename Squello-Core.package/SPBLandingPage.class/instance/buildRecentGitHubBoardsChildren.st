toolbuilder-recent boards
buildRecentGitHubBoardsChildren

	^ ( self class RecentGitHubBoards collect: 
		[:aDictionary | self buildRecentGitHubBoardsButtonSpecWith: self usedBuilder withBoardInfo: aDictionary] )asOrderedCollection.