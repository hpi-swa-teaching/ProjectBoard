toolbuilder
buildWith: aBuilder

	
	| spec |
	self usedBuilder: aBuilder.
	spec := aBuilder pluggableWindowSpec new
		model: self;
		label: 'Landing Page';
		minimumExtent: 1040@400;
		children: 
			{self buildSidebarSpecWith: aBuilder.
			"self buildRecentBoardsSpecWith: aBuilder."
		};
		"work notiz: children has to be implementet already or programm hangs up at window build, because there it expect all that will be builded is a spec already"
		yourself.
		
	^ self
		window: (aBuilder build: spec);
		window.