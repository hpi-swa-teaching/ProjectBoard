building
buildFromRemote: aJsonObject into: anSPBColumn

	self buildCardWith: aJsonObject.
	self card boardProvider: self boardProvider.
	self card changeProvider: self changeProvider.
	self card openInWorld.
	self setCardColumn: anSPBColumn.
	^ self card.