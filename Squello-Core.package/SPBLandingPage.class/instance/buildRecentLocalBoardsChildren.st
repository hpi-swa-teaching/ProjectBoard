toolbuilder
buildRecentLocalBoardsChildren

	|children|
	children := ( self class RecentLocalBoards collect: [:NameOfRecentLocalBoard | self buildRecentLocalBoardsButtonSpecWith: self usedBuilder withName: NameOfRecentLocalBoard] )asOrderedCollection.
	^ children.