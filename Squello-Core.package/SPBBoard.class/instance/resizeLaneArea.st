update sidebar
resizeLaneArea
	
	| widgetName laneArea newMinHeight |
	laneArea := self usedBuilder widgetAt: #laneArea.
	newMinHeight := laneArea height - laneArea scrollBarThickness - 1.
	
	self lanes do: 
		[:each | 
		widgetName := ('lane', each id asString) asSymbol.
		(self usedBuilder widgetAt: widgetName) minimumHeight: newMinHeight.
		each minimumHeight: newMinHeight * 0.85. each resizeToFitCards].