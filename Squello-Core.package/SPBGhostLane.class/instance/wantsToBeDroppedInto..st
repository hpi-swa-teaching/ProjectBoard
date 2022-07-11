dropping/grabbing
wantsToBeDroppedInto: aMorph

	| laneIndex center |
	(aMorph class = SPBPluggablePasteUpMorph or: [aMorph class = SPBMockLane]) ifFalse: [^ false].
	
	laneIndex := aMorph actionModel board lanes indexOf: aMorph actionModel.
	center := aMorph positionInWorld x + (aMorph width // 2).
	self position x > center 
		ifTrue: 
			[self sourceLane changeIndexOfLane: laneIndex + 1.
			self sourceLane changeRemoteIndexOfLane: laneIndex + 1]
		 ifFalse: 
			[self sourceLane changeIndexOfLane: laneIndex.
			self sourceLane changeRemoteIndexOfLane: laneIndex].
	
	^ false.