accessing
changeLaneLocalFor: aSPBCard in: anotherNumber

	| oldLane oldLaneID currentLane |
	oldLaneID := anotherNumber.
	oldLane := (self board laneCardLinkage at: oldLaneID).
	oldLane removeAt: (oldLane indexOf: aSPBCard).
	currentLane := self board laneCardLinkage at: self id.
	currentLane add: aSPBCard.
	aSPBCard lane: self id. 

	
	
	
	