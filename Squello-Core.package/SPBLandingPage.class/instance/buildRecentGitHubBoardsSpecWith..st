toolbuilder
buildRecentGitHubBoardsSpecWith: aBuilder

	| spec |
	self usedBuilder: aBuilder.
	spec := aBuilder pluggablePanelSpec new
		model: self;
		"label: 'Recent Local Boards';"
		
		"frame: (0@0.2 corner: 1@1);"
		children: 
			{"self class RecentGitHubBoards: [:recentGitHubBoard | self buildRecentGitHubBoardsButtonSpecWith: aBuilder withBoardInfo: recentGitHubBoard] 
		"};
		layout: #horizontal;
		yourself.
	^ aBuilder build: spec.