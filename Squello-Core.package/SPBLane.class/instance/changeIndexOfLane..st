creation
changeIndexOfLane: aNumber

	| index lanes newIndex |
	lanes := self board lanes.
	index := lanes indexOf: self.
	
	index = aNumber ifTrue: [^ self].  "don't move"
	index < aNumber 
		ifTrue:  "move ahead"
			[newIndex := aNumber - 1.
			lanes removeAt: index.
			lanes add: self beforeIndex: aNumber - 1]
		ifFalse:  "move back"
			[newIndex := aNumber.
			lanes removeAt: index.
			lanes add: self beforeIndex: aNumber].
	aNumber = 1 
		ifTrue: [self provider moveLaneToFront: self] 
		ifFalse: [self provider moveLane: self after: (lanes at: (lanes indexOf: self) - 1)  id].
	self board updateLanesWithCards.