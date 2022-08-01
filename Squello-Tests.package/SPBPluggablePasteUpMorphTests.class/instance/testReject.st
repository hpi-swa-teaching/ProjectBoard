tests
testReject
	
	| testMorph result |
	testMorph := Morph new.
	pluggablePasteUpMorph reject: [:morph :evt | morph class = Morph].
	result := pluggablePasteUpMorph reject value: testMorph value: DropEvent new.
	self assert: true equals: result.