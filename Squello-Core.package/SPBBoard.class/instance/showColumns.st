drag and drop
showColumns

	self columns 
		do: [:column | column pasteup: (self usedBuilder widgetAt: column id).
			column buildCards.
			column board: self].