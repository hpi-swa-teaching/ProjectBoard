cards
createNewCard: aDictionary into: anSPBColumn 
	
	"this is for testing"
	(aDictionary at: 'test') ifNotNil: [^ true].
	UIManager inform: 'Squello does not support adding cards yet'.