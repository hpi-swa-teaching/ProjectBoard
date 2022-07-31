accessing
updateColumns

	self columns 
		do: [:column | column pasteup: (self usedBuilder widgetAt: column id).
			column
				initializeIndicator;
				fetchCards;
				buildCards;
				board: self;
				resizeToFitCards;
				initializeBottomDetection].