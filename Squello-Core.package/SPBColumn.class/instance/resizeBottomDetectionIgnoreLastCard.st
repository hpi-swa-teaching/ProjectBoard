creation
resizeBottomDetectionIgnoreLastCard
	
	| bottomPoint pasteupExtent cardCount |
	cardCount := self cards size.
	cardCount > 1
		ifTrue: [bottomPoint := (self cardPositions at: self cards size) - (0 @ self class defaultSpaceBetweenCards)]
		ifFalse: [bottomPoint := 0 @ 0].

	pasteupExtent := self pasteup extent.
	self bottomDetection position: bottomPoint.
	self bottomDetection extent: 280 @ (pasteupExtent y - bottomPoint y).