window construction
buildSidebar

	self model: SPBModel new.
	self model board: self boardArea.

	self editArea: (self builder buildPluggablePanel: self editPaneSpec).
	self editArea color: Color darkGray.
	
	self boardArea editViewTitle: (self builder buildPluggableText: self editTitleSpec).
	self boardArea editViewTitle acceptOnCR: true.
	self builder add: (self boardArea editViewTitle) to: self editArea.
	
	self boardArea editViewDescription: (self builder buildPluggableText: self editDescriptionSpec).
	self builder add: (self boardArea editViewDescription) to: self editArea.
	
	self builder add: self editArea to: self window.