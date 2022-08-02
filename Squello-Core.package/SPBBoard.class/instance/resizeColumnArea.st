update sidebar
resizeColumnArea
	
	| widgetName columnArea newMinHeight |
	columnArea := self usedBuilder widgetAt: #columnArea.
	newMinHeight := columnArea height - columnArea scrollBarThickness - 1.
	
	self columns
		do: [:column | widgetName := ('column', column id asString) asSymbol.
			(self usedBuilder widgetAt: widgetName) minimumHeight: newMinHeight.
			column 
				minimumHeight: newMinHeight * 0.85;
				alignCards;
				resizeBottomDetection;
				resizeToFitCards].