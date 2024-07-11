columns
moveColumn: aSPBColumn after: anotherSPBColumn

	"this is for testing"
	(aSPBColumn = #test) ifTrue: [^ true].
	UIManager inform: 'Squello does not currently support moving Columns'.