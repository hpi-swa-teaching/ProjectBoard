card movement
addToNewLane: aSPBCard with: anEvent
	
	| nextCard |
	nextCard := nil.
	
	self cards
		do: [:each | ((each position y + (each extent y / 2)) > aSPBCard center y) 
			ifTrue: [nextCard ifNil: [nextCard := each]]].
	nextCard
		ifNil: [self cards addLast: aSPBCard]
		ifNotNil: [self cards add: aSPBCard before: nextCard].
		
	self resizeToFitCards.