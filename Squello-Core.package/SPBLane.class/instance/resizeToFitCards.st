card movement
resizeToFitCards
	
	self pasteup ifNotNil: [self pasteup extent: 300 @ ((self minimumHeight max: (self cards size * 120)) - 4)].