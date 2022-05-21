card movement
changeLaneLocalFor: aSPBCard in: aSPBLane

	| oldLaneCards oldLane currentLane |
	oldLane := aSPBLane.
	oldLaneCards := (self board laneCardLinkage at: (oldLane id)).
	oldLaneCards removeAt: (oldLaneCards indexOf: aSPBCard).
	currentLane := self board laneCardLinkage at: self id.
	currentLane add: aSPBCard.
	aSPBCard lane: self. 
	oldLane alignCards.

	
	
	
	