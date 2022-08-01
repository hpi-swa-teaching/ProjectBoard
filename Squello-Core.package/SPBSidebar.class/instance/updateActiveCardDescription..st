text fields
updateActiveCardDescription: aText

	(self board usedBuilder widgetAt: #sidebarDescription) hasUnacceptedEdits: false.
	self activeCard updateDescription: aText string.
	self changed: #activeCardDescription.