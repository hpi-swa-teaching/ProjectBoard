toolbuilder
buildWith: aBuilder

	
	| spec |
	self usedBuilder: aBuilder.
	spec := aBuilder pluggableWindowSpec new
		model: self;
		label: 'Landing Page';
		minimumExtent: 500px @200px;
		"layout: #horizontal:;"
		children: 
			{self buildSidebarSpecWith: aBuilder.
			self buildRecentBoardsSpecWith: aBuilder
		};
		
		yourself.
	^ aBuilder build: spec.
