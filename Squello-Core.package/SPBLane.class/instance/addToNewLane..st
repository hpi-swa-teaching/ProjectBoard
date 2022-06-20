card movement
addToNewLane: aSPBCard
	
	| index nextCard |
	nextCard := nil.
	self cards do: 
		[:each | each position y > aSPBCard position y ifTrue: [nextCard ifNil: [nextCard := each]]].
	nextCard ifNil: 
		[self cards addLast: aSPBCard.
		^ (self cards size > 1 
			ifTrue: [aSPBCard frontCardId: (self cards at: self cards size -1) id] 
			ifFalse: [aSPBCard frontCardId: nil])].
	self cards add: aSPBCard before: nextCard.
	index := self cards indexOf: aSPBCard.
	nextCard frontCardId: aSPBCard id.
	self cards first = aSPBCard 
		ifFalse: [aSPBCard frontCardId: (self cards at: index - 1) id]
		ifTrue: [aSPBCard frontCardId: nil].
		
	self resizeToFitCards.