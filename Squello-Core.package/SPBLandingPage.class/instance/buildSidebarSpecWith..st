toolbuilder
buildSidebarSpecWith: aBuilder
		
	^ aBuilder pluggableListSpec new
		model: self;
		list: #list;
		getSelected: #lastSidebarPart;
		setSelected: #lastSidebarPart:;
		menu: #menu:;
		minimumExtent: 150px @ 0px;
		frame: (0@0 corner: 0.2@1.0);
		yourself