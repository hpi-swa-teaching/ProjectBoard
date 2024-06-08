accessing
lastSidebarPart: anObject
	
	lastSidebarPart := anObject.
	self changed: #lastSidebarPart
	
	"self updateMainPanel
	
	self projectDescription: ..
	
	self changed: #projectDescription.
	
	
	buildWIth: .... pluggableTextSpec new .... model: self ... getText: #projectDescription.
	
	
	
	"