dropping/grabbing
wantsToBeDroppedInto: aMorph

	| laneIndex center |
	(aMorph class = SPBPluggablePasteUpMorph) ifFalse: [^ false].
	
	laneIndex := aMorph actionModel board lanes indexOf: aMorph actionModel.
	center := aMorph positionInWorld x + (aMorph width // 2).
	self position x > center 
		ifTrue: [
			sourceLane changeIndexOfLane: laneIndex + 1
		] ifFalse: [
			sourceLane changeIndexOfLane: laneIndex
		].
	
	^ false.