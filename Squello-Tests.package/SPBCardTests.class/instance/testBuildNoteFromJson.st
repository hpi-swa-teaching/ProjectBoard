tests
testBuildNoteFromJson

	| noteJson |
	noteJson := '{
	"note": "this is a note"}' parseAsJson.
	
	card buildCard: noteJson.
	self assert: card isNote.
	self assert: card title = 'this is a note'.