card movement
addToNewColumn: anSPBCard with: anEvent
	
	| nextCard |
	nextCard := nil.
	
	self cards
		do: [:card | ((card position y + (card extent y / 2)) > anSPBCard center y) 
			ifTrue: [nextCard ifNil: [nextCard := card]]].
	nextCard
		ifNil: [self cards addLast: anSPBCard]
		ifNotNil: [self cards add: anSPBCard before: nextCard].
		
	self resizeToFitCards.