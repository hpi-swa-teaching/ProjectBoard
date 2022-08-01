toolbuilder
createSidebar

	self sidebar: 
		(SPBSidebar new 
			board: self;
			boardProvider: self boardProvider;
			yourself).