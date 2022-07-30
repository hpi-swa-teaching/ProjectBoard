creation
resizeBottomDetection
	
	| bottomCard bottomPoint pasteupExtent |
	self cards isEmpty
		ifFalse: [bottomCard := self cards last.
			bottomPoint := (self cardPositions at: self cards size) + (0 @ bottomCard extent y)]
		ifTrue: [bottomPoint := 0 @ 0].

	pasteupExtent := self pasteup extent.
	self bottomDetection position: bottomPoint.
	self bottomDetection extent: 280 @ (pasteupExtent y - bottomPoint y).