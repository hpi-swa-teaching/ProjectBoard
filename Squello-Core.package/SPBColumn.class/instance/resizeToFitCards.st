card movement
resizeToFitCards
	
	| height |
	height := (self cards size + 1) * self class defaultSpaceBetweenCards.
	self cards
		do: [:card | height := height + card height].
	self pasteup
		ifNotNil: [self pasteup extent: SPBBoard columnMinimumExtent x @ ((self minimumHeight max: height) - SPBCard indicatorCardEdgeOffset)].