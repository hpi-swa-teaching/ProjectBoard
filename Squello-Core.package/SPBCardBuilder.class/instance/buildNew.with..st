building
buildNew: aDictionary with: anSPBColumn

	| cardJson |
	cardJson := self boardProvider createCard: aDictionary into: anSPBColumn.
	self buildCardWith: cardJson.
	self card boardProvider: self boardProvider.
	self card changeProvider: self changeProvider.
	self card openInWorld.