toolbuilder-manage panel
buildLocalBoardsListSpecWith: aBuilder

	^ aBuilder pluggableScrollPaneSpec new
		model: self;
		vScrollBarPolicy: #always;
		children: self buildLocalBoardsListChildren;
		layout: #vertical;
		yourself.
		