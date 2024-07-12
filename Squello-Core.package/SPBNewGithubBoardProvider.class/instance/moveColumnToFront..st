columns
moveColumnToFront: aSPBColumn

	"this is for testing"
	(aSPBColumn = #test) ifTrue: [^ true.].
	UIManager inform: 'Squello does not currently support moving Columns'.