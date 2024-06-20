toolbuilder
buildSidebarSpecWith: aBuilder
		
	^ aBuilder pluggableListSpec new
		model: self;
		list: #list;
		horizontalResizing: #shrinkWrap;
		getSelected: #lastSidebarPart;
		setSelected: #lastSidebarPart:;
		menu: #menu:;
		yourself