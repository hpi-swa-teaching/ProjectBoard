currently not in use
forlaterbuildRecentLocalBoardsSpecWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		model: self;
		"label: 'Recent Local Boards';"
		
		"frame: (0@0.2 corner: 1@1);"
		children: 
			{"self class RecentLocalBoards: [:NameOfRecentLocalBoard | self buildRecentLocalBoardsButtonSpecWith: aBuilder withName: NameOfRecentLocalBoard]
		"
		self buildRecentLocalBoardsButtonSpecWith: aBuilder withName: 'hi'.
		self buildRecentLocalBoardsButtonSpecWith: aBuilder withName: 'test'
		
		};
		layout: #horizontal;
		yourself.
	
	