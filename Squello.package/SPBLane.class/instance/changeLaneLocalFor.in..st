card movement
changeLaneLocalFor: aSPBCard in: aSPBLane

	| oldLaneCards oldLane currentLaneCards |
	oldLane := aSPBLane.
	oldLaneCards := (self board laneCardLinkage at: (oldLane id)).
	oldLaneCards removeAt: (oldLaneCards indexOf: aSPBCard).
	currentLaneCards := self board laneCardLinkage at: self id.
	currentLaneCards add: aSPBCard.
	aSPBCard lane: self. 
	self setFrontCardFor: aSPBCard in: currentLaneCards.
	oldLane alignCards.
	self updateFrontCardReferenceIn: oldLaneCards.
	self updateFrontCardReferenceIn: currentLaneCards.

	
	
	
	