toolbuilder
buildRecentLocalBoardsChildren

	|children|
	children := ( self class RecentLocalBoards: [:NameOfRecentLocalBoard | self buildRecentLocalBoardsButtonSpecWith: self usedBuilder withName: NameOfRecentLocalBoard] )asOrderedCollection
	
	 "pluggableButtonSpec new
		model: self;
		label: 
		yourself."
		
