accessing
lastSidebarPart: anObject
	
	lastSidebarPart := anObject.
	self changed: #lastSidebarPart.
	self changed: #contentPanelChildren.