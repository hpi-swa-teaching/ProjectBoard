toolbuilder-recent boards
buildRecentLocalBoardsSpecWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		name: #RecentLocalBoards;
		model: self;
		children: self buildRecentLocalBoardsChildren;
		layout: #horizontal;
		yourself.