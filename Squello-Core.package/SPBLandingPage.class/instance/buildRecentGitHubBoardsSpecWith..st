toolbuilder-recent boards
buildRecentGitHubBoardsSpecWith: aBuilder

	^ aBuilder pluggablePanelSpec new
			name: #RecentGitHubBoards;
			model: self;
			children: self buildRecentGitHubBoardsChildren;
			layout: #horizontal;
			yourself.