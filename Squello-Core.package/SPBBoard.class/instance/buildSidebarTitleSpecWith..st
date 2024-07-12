toolbuilder-sidebar
buildSidebarTitleSpecWith: aBuilder

	^ aBuilder pluggableTextSpec new
		model: self sidebar;
		frame: (0@0 corner: 1@self endTitleSidebar);
		name: #sidebarTitle;
		getText: #activeCardTitle;
		setText: #updateActiveCardTitle:;
		yourself.