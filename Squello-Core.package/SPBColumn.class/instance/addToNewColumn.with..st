card movement
addToNewColumn: anSPBCard with: anEvent
	
	| nextCard |
	nextCard := self getNextCardAfter: anSPBCard.
	nextCard
		ifNil: [self cards addLast: anSPBCard]
		ifNotNil: [self cards add: anSPBCard before: nextCard].
		
	self resizeToFitCards.