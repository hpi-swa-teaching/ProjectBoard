columns
createColumn: aString
	
	"this is for testing"
	(aString = #test) ifTrue: [^ true].
	"AFAIK, this is currently not supported by the API"
	UIManager inform: 'Sorry, It is not possible to create a column from Squello.'.