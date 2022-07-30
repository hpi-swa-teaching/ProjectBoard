dropping/grabbing
wantsToBeDroppedInto: aMorph

	| laneIndex center model xPosition |
	(aMorph class = SPBPluggablePasteUpMorph or: [aMorph class = SPBMockLane]) 
		ifFalse: [^ false].
	
	model := aMorph actionModel.
	laneIndex := model board lanes indexOf: model.
	center := aMorph positionInWorld x + (aMorph width // 2).
	xPosition := self position x.
	xPosition > center 
		ifTrue: [self sourceLane changeIndexOfLane: laneIndex + 1.
			self sourceLane changeRemoteIndexOfLane: laneIndex + 1]
		 ifFalse: [self sourceLane changeIndexOfLane: laneIndex.
			self sourceLane changeRemoteIndexOfLane: laneIndex].
	
	^ false.