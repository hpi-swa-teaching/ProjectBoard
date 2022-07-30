building
buildNew: aDictionary into: anSPBColumn

	self buildNew: aDictionary with: anSPBColumn.
	self setCardColumn: anSPBColumn.	
	^ self card.