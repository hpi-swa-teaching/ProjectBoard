update window
rerenderColumns

	self columns
		do: [:column | column 
				pasteup: (self usedBuilder widgetAt: column id);
				rerenderCards;
				board: self].