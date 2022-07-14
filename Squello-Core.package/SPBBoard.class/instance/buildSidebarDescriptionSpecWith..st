toolbuilder
buildSidebarDescriptionSpecWith: aBuilder

	^ aBuilder pluggableTextSpec new
			model: self;
			name: #sidebarDescription;
			setText: #updateActiveCardDescription:;
			getText: #activeCardDescription;
			frame: (0@0.4 corner: 1@1);
			yourself.