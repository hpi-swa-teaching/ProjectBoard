toolbuilder-recent boards
buildRecentGitHubBoardsSpecWith: aBuilder

	^ aBuilder pluggablePanelSpec new
		name: #RecentGitHubBoards;
		model: self;
		layout: #horizontal;
		children: self buildRecentGitHubBoardsChildren;
		yourself.