update window
showColumns

	self columns 
		do: [:column | column 
				pasteup: (self usedBuilder widgetAt: column id);
				buildCards;
				board: self].