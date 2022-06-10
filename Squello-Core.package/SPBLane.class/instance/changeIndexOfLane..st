creation
changeIndexOfLane: aNumber

	| index lanes newIndex |
	lanes := self board lanes.
	index := lanes indexOf: self.
	
	index = aNumber ifTrue: [^ self].  "don't move"
	index < aNumber 
		ifTrue: [ "move ahead"
			newIndex := aNumber - 1.
			self updateOldFrontLaneIdFor: index In: lanes.
			lanes removeAt: index.
			lanes add: self beforeIndex: aNumber - 1.
			self updateNewFrontLaneIdFor: newIndex In: lanes.]
		ifFalse: [ "move back"
			newIndex := aNumber.
			self updateOldFrontLaneIdFor: index In: lanes.
			lanes removeAt: index.
			lanes add: self beforeIndex: aNumber.
			self updateNewFrontLaneIdFor: newIndex In: lanes].
	self frontLaneId 
		ifNil: [self provider moveLaneToFront: self ] 
		ifNotNil: [self provider moveLane: self after: self frontLaneId].
	self board updateLanesWithCards.
	

	

	
		 
	
		

