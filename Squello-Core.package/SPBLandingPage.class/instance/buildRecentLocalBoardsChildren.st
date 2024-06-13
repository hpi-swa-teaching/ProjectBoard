toolbuilder-recent boards
buildRecentLocalBoardsChildren

	^ ( self class RecentLocalBoards collect: 
		[:aString | self buildRecentLocalBoardsButtonSpecWith: self usedBuilder withName: aString] ) asOrderedCollection.