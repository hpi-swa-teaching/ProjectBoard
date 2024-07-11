columns
renameColumn: aSPBColumn to: aString

	"this is for testing"
	(aSPBColumn = #test) ifTrue: [^ true].
	"AFAIK, this is currently not supported by the API"
	UIManager inform: 'Sorry, It is not possible to rename a column from Squello.'.