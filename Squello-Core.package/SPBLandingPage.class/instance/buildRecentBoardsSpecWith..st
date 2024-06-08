toolbuilder
buildRecentBoardsSpecWith: aBuilder

	| spec |
	self usedBuilder: aBuilder.
	spec := aBuilder pluggableWindowSpec new
		model: self;
		label: 'Recent Boards';
		layout: #vertical:;
		frame: (0@0.2 corner: 1@1);
		children: 
			{self buildRecentLocalBoardsSpecWith: aBuilder.
			self buildRecentGitHubBoardsSpecWith: aBuilder
		};
		yourself.
	^ aBuilder build: spec.