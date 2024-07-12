toolbuilder-sidebar
buildSidebarTitleSpecWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self sidebar;
		frame: (0@0 corner: 1@0.1);
		name: #sidebarTitle;
		getText: #activeCardTitle;
		setText: #updateActiveCardTitle:;
		yourself.