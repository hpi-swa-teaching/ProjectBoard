toolbuilder
buildSidebarDescriptionSpecWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self sidebar;
		name: #sidebarDescription;
		setText: #updateActiveCardDescription:;
		getText: #activeCardDescription;
		frame: (0@0.5 corner: 1@1);
		yourself.