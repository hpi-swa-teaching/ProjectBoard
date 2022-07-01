card movement
resizeToFitCards
	
	| cardHeightsSum |
	cardHeightsSum := 0.
	self cards do:
		[:each | cardHeightsSum := cardHeightsSum + each height + self spaceBetweenCards].
	self pasteup ifNotNil: [self pasteup extent: self width @ ((self minimumHeight max: cardHeightsSum) - 4)].