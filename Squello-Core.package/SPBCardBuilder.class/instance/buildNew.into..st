building
buildNew: aDictionary into: anSPBLane

	self buildNew: aDictionary with: anSPBLane.
	self setCardLane: anSPBLane.	
	^ self card.