toolbuilder-recent boards
buildRecentLocalBoardsSpecWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		name: #RecentLocalBoards;
		model: self;
		layout: #horizontal;
		children: self buildRecentLocalBoardsChildren;
		yourself.