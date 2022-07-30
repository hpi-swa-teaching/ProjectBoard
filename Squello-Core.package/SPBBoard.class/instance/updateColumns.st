accessing
updateColumns

	self columns 
		do: [:column | column pasteup: (self usedBuilder widgetAt: column id).
			column initializeIndicator.
			column fetchCards.
			column buildCards.
			column board: self.
			column resizeToFitCards.
			column initializeBottomDetection].