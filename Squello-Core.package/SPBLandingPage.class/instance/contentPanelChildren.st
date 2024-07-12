toolbuilder
contentPanelChildren
	
	self lastSidebarPart 
		ifNil: [^ {}].
	(self contentSpecDict includesKey: self lastSidebarPart) 
		ifTrue: 	[^ (self contentSpecDict at: self lastSidebarPart) collect: [:each| each buildWith: self usedBuilder]].
	^ {}.