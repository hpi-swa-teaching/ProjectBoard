creation
resizeBottomDetectionIgnoreLastCard
	
	| bottomCard bottomPoint |
	self cards size > 1
		ifTrue: 
			[bottomCard := self cards last.
			bottomPoint := (self cardPositions at: self cards size) x @ (((self cardPositions at: self cards size) y) - SPBLane defaultSpaceBetweenCards)]
		ifFalse:
			[bottomPoint := 0 @ 0].
		
	self bottomDetection position: bottomPoint.
	self bottomDetection extent: 280 @ (self pasteup extent y - bottomPoint y).