toolbuilder-manage panel
buildLocalBoardsListSpecWith: aBuilder

	^ aBuilder pluggableScrollPaneSpec new
		model: self;
		vScrollBarPolicy: #always;
		layout: #vertical;
		children: self buildLocalBoardsListChildren;
		yourself.
		