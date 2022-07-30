card movement
resizeToFitCards
	
	| height |
	height := (self cards size + 1) * 10.
	(self cards)
		do: [:card | height := height + card height].
	(self pasteup)
		ifNotNil: [self pasteup extent: 300 @ ((self minimumHeight max: height) - 5)].