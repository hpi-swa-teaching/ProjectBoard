building
buildNew: aDictionary atTop: anSPBLane

	self buildNew: aDictionary with: anSPBLane.
	self setCardLaneAtTop: anSPBLane.	
	^ self card.