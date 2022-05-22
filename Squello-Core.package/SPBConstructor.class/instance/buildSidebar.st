window construction
buildSidebar

	self sidebar: (self builder buildPluggablePanel: self sidebarPanelSpec).
	self sidebar color: Color darkGray.
	
	self board sidebarTitle: (self builder buildPluggableText: self sidebarTitleSpec).
	self board sidebarTitle acceptOnCR: true.
	self builder add: (self board sidebarTitle) to: self sidebar.
	
	self board sidebarDescription: (self builder buildPluggableText: self sidebarDescriptionSpec).
	self builder add: (self board sidebarDescription) to: self sidebar.
	
	self builder add: self sidebar to: self window.