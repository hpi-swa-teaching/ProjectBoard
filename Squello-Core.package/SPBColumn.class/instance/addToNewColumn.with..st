card movement
addToNewColumn: anSPBCard with: anEvent
	
	| nextCard |
	nextCard := nil.
	
	self cards
		do: [:each | ((each position y + (each extent y / 2)) > anSPBCard center y) 
			ifTrue: [nextCard ifNil: [nextCard := each]]].
	nextCard
		ifNil: [self cards addLast: anSPBCard]
		ifNotNil: [self cards add: anSPBCard before: nextCard].
		
	self resizeToFitCards.