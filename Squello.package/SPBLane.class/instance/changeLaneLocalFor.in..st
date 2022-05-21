accessing
changeLaneLocalFor: aSPBCard in: aOtherNumber

	| oldLane oldLaneID currentLane |
	
	oldLaneID := aOtherNumber.
	oldLane := (self board laneCardLinkage at: oldLaneID).
	oldLane removeAt: (oldLane indexOf: aSPBCard).
	currentLane := self board laneCardLinkage at: self id.
	currentLane add: self.

	
	
	
	