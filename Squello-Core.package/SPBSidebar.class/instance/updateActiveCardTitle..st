text fields
updateActiveCardTitle: aText

	(self board usedBuilder widgetAt: #sidebarTitle) hasUnacceptedEdits: false.
	self activeCard updateTitle: aText string.
	self changed: #activeCardTitle.