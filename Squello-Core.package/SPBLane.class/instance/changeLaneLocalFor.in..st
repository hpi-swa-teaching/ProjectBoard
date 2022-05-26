card movement
changeLaneLocalFor: aSPBCard in: aSPBLane

	| oldLane |
	oldLane := aSPBCard lane.
	oldLane cards remove: aSPBCard.
	aSPBCard lane: self.
	self cards add: aSPBCard.

	self setFrontCardFor: aSPBCard in: self cards.
	oldLane alignCards.
	
	self updateFrontCardReferenceIn: oldLane cards.
	self updateFrontCardReferenceIn: self cards.