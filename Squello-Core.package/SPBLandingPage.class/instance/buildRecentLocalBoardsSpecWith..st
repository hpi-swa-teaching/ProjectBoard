toolbuilder
buildRecentLocalBoardsSpecWith: aBuilder

	^ aBuilder pluggablePanelSpec new
			name: #RecentLocalBoards;
			model: self;
			children: #buildRecentLocalBoardsChildren;
			layout: #horizontal;
			yourself.
	