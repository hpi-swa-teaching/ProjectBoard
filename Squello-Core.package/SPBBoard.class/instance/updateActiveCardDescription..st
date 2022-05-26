as yet unclassified
updateActiveCardDescription: aText

	(self usedBuilder widgetAt: #sidebarDescription) hasUnacceptedEdits: false.
	self activeCard ifNil: [^ self].
	self activeCard updateDescription: aText string.