toolbuilder
buildRecentBoardsSpecWith: aBuilder

	| spec |
	self usedBuilder: aBuilder.
	spec := aBuilder pluggablePanelSpec new
		model: self;
		"label: 'Recent Boards';"
		layout: #vertical;
		children: 
			{self buildRecentLocalBoardsSpecWith: aBuilder.
			"self buildRecentGitHubBoardsSpecWith: aBuilder."
		};
		yourself.
	^ spec.