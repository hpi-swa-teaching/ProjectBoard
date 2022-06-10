dropping/grabbing
wantsToBeDroppedInto: aMorph

	| laneIndex center |
	(aMorph class = SPBPluggablePasteUpMorph) ifFalse: [^ false].
	
	laneIndex := aMorph actionModel board lanes indexOf: aMorph actionModel.
	center := aMorph position x + (aMorph width // 2) + self owner position x.
		
	self position x > center
		ifTrue: [
			sourceLane changeIndex: laneIndex + 1
		] ifFalse: [
			sourceLane changeIndex: laneIndex
		].
	
	^ false.