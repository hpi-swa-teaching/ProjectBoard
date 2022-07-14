update sidebar
updateActiveCardTitle: aText

	(self usedBuilder widgetAt: #sidebarTitle) hasUnacceptedEdits: false.
	self activeCard 
		ifNil: [^ self].
	self activeCard updateTitle: aText string.