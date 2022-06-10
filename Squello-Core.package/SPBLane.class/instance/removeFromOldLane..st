card movement
removeFromOldLane: aSPBCard
	
	| index cards |
	cards := aSPBCard lane cards.
	index := cards indexOf: aSPBCard.
	
	(cards last = aSPBCard or: [cards first = aSPBCard]) ifFalse: 
		[( cards at: index + 1) frontCardId: (cards at: index - 1) id].
	(cards size ~~ 1 and: [cards first = aSPBCard]) ifTrue: 
		[( cards at: index + 1) frontCardId: nil].
	cards remove: aSPBCard.
