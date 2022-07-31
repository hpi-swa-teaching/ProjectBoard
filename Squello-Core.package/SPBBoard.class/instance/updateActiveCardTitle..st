update sidebar
updateActiveCardTitle: aText

	(self usedBuilder widgetAt: #sidebarTitle) hasUnacceptedEdits: false.
	self activeCard updateTitle: aText string.
	self changed: #activeCardTitle.