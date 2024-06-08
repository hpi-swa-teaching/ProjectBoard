toolbuilder
buildRecentLocalBoardsSpecWith: aBuilder

	| spec |
	self usedBuilder: aBuilder.
	spec := aBuilder pluggableWindowSpec new
		model: self;
		label: 'Recent Local Boards';
		layout: #horizontal:;
		"frame: (0@0.2 corner: 1@1);"
		children: 
			{self RecentLocalBoards: [:each | self buildRecentLocalBoardsButtonSpecWith: aBuilder]
		};
		yourself.
	^ aBuilder build: spec.