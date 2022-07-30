building
buildFromRemote: aJsonObject into: anSPBLane

	self buildCardWith: aJsonObject.
	self card boardProvider: self boardProvider.
	self card changeProvider: self changeProvider.
	self card openInWorld.
	self setCardLane: anSPBLane.
	^ self card.