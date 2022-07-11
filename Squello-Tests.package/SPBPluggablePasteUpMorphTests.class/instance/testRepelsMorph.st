as yet unclassified
testRepelsMorph
	
	| testMorph result |
	testMorph := Morph new.
	pluggablePasteUpMorph reject: [:morph :evt | morph class = Morph].
	result := pluggablePasteUpMorph repelsMorph: testMorph event: DropEvent new.
	self assert: true equals: result.