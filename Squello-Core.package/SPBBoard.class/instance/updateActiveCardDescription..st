update sidebar
updateActiveCardDescription: aText

	(self usedBuilder widgetAt: #sidebarDescription) hasUnacceptedEdits: false.
	self activeCard updateDescription: aText string.
	self changed: #activeCardDescription.