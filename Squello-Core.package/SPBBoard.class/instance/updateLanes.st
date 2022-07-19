accessing
updateLanes

	self lanes 
		do: [:each | each pasteup: (self usedBuilder widgetAt: each id).
			each lane: (self usedBuilder widgetAt: ('lane' , each id asString) asSymbol).
			each initializeIndicator.
			each fetchCards.
			each buildCards.
			each board: self.
			each resizeToFitCards.
			each initializeBottomDetection.
			self resizeLaneArea].