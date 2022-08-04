card movement
getNextCardAfter: anSPBCard
	
	| nextCard |
	nextCard := nil.
	self cards
		do: [:card | (card position y + (card extent y / 2) > anSPBCard center y) 
			ifTrue: [nextCard ifNil: [nextCard := card]]].
	^ nextCard.