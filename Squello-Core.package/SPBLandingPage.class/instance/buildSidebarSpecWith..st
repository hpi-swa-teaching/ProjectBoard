toolbuilder
buildSidebarSpecWith: aBuilder
		
	^ aBuilder pluggableListSpec new
		model: self;
		list: #list;
		getSelected: #lastSidebarPart;
		setSelected: #lastSidebarPart:;
		menu: #menu:;
		horizontalResizing: #shrinkWrap;
		yourself