toolbuilder
buildSidebarTitleSpecWith: aBuilder

	^ aBuilder pluggableTextSpec new
			model: self;
			name: #sidebarTitle;
			setText: #updateActiveCardTitle:;
			getText: #activeCardTitle;
			frame: (0@0 corner: 1@0.1);
			yourself.