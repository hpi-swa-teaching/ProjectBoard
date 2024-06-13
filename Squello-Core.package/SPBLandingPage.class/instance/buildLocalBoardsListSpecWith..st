toolbuilder-manage panel
buildLocalBoardsListSpecWith: aBuilder

	^ aBuilder pluggableScrollPaneSpec new
			model: self;
			vScrollBarPolicy: #always;
			children: "#buildLocalBoardsListChildren;"(self buildLocalBoardsListChildren);
			layout: #horizontal;
			yourself.
			