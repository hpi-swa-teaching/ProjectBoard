toolbuilder
buildRecentLocalBoardsSpecWith: aBuilder

	^ aBuilder pluggableScrollPaneSpec new
			frame: (0@0 corner: 0.2@1);
			name: #RecentLocalBoards;
			model: self;
			"scrollBarThickness: 20;"
			vScrollBarPolicy: #never;
			children: #buildRecentLocalBoardsChildren;
			layout: #horizontal;
			yourself.
	