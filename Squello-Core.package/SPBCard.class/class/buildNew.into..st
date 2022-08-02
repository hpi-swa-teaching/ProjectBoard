accessing
buildNew: aDictionary into: anSPBColumn

	| instance cardJson boardProvider |
	boardProvider := anSPBColumn boardProvider.
	cardJson := boardProvider createCard: aDictionary into: anSPBColumn.
	instance := self newFrom: cardJson with: anSPBColumn.
	instance setCardColumnAtTop: anSPBColumn.
	^ instance.