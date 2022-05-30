toolbuilder
buildSidebarDescriptionSpecWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self;
		name: #sidebarDescription;
		setText: #updateActiveCardDescription:;
		getText: #activeCardDescription;
		frame: (0@0.25 corner: 1@0.95);
		yourself.
		