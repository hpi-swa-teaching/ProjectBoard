update window
setupColumns

	self columns 
		do: [:column | column pasteup: (self usedBuilder widgetAt: column id).
			column
				initializeIndicator;
				fetchAndBuildCards;
				board: self;
				resizeToFitCards;
				initializeBottomDetection].