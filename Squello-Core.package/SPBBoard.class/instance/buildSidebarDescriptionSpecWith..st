toolbuilder-sidebar
buildSidebarDescriptionSpecWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self sidebar;
		frame: (0@self midOfSidebar corner: 1@1);
		name: #sidebarDescription;
		getText: #activeCardDescription;
		setText: #updateActiveCardDescription:;
		yourself.