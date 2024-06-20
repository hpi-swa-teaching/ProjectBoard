building
setupColumns

	self columns 
		do: [:column | column pasteup: (self usedBuilder widgetAt: column id).
			column
				initializeIndicator].
	self boardProvider fetchCardsIntoColumns: self columns.
	self columns
		do: [:column|
			column
				board: self;
				resizeToFitCards;
				initializeBottomDetection].