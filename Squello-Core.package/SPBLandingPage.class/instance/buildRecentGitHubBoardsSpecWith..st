toolbuilder-recent boards
buildRecentGitHubBoardsSpecWith: aBuilder

	^ aBuilder pluggablePanelSpec new
			name: #RecentGitHubBoards;
			model: self;
			children: #buildRecentGitHubBoardsChildren;
			layout: #horizontal;
			yourself.
	