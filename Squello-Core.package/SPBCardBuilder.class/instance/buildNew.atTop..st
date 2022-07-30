building
buildNew: aDictionary atTop: anSPBColumn

	self buildNew: aDictionary with: anSPBColumn.
	self setCardColumnAtTop: anSPBColumn.	
	^ self card.