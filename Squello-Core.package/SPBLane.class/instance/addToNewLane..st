card movement
addToNewLane: aSPBCard
	
	| nextCard |
	nextCard := nil.
	self cards do: 
		[:each | each position y > aSPBCard position y ifTrue: [nextCard ifNil: [nextCard := each]]].
	nextCard ifNil: 	[self cards addLast: aSPBCard]
	ifNotNil: [self cards add: aSPBCard before: nextCard].
		
	self resizeToFitCards.