toolbuilder
updateColumnsAndSidebar

	| newColumnArea oldColumnArea oldSidebar newSidebar currentWidth |
	oldColumnArea := self usedBuilder widgetAt: #columnArea.
	
	currentWidth := oldColumnArea width / self window width.
	
	oldColumnArea abandon.
	newColumnArea := (self usedBuilder build: (self buildColumnAreaSpecWith: self usedBuilder width: currentWidth)).
	
	oldSidebar := self usedBuilder widgetAt: #sidebar.
	oldSidebar abandon.
	newSidebar := (self usedBuilder build: (self buildSidebarSpecWith: self usedBuilder witdh: currentWidth)). 
	
	self usedBuilder add: newColumnArea to: self window.
	self usedBuilder add: newSidebar to: self window.