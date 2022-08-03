instance creation
buildNew: aDictionary into: anSPBColumn
	"called when a card is added local on squello"
	
	| instance boardProvider |
	boardProvider := anSPBColumn boardProvider.
	instance := boardProvider createNewCard: aDictionary into: anSPBColumn.
	instance setCardColumnAtTop: anSPBColumn.
	
	^ instance.