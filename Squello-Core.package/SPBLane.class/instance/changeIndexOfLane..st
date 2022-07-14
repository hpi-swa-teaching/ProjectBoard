creation
changeIndexOfLane: aNumber

	| index lanes newIndex |
	lanes := self board lanes.
	index := lanes indexOf: self.
	
	index = aNumber 
		ifTrue: [^ self]. 
	index < aNumber 
		ifTrue: [newIndex := aNumber - 1.
			lanes 
				removeAt: index;
				add: self beforeIndex: aNumber - 1]
		ifFalse: [newIndex := aNumber.
			lanes
				removeAt: index;
				add: self beforeIndex: aNumber].
	self board updateLanesWithCards.