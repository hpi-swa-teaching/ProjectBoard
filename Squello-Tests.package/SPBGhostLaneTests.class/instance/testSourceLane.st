as yet unclassified
testSourceLane

	| sourceLane |
	sourceLane := Morph new.
	
	self assert: nil equals: ghostLane sourceColumn.
	ghostLane sourceColumn: sourceLane.
	self assert: sourceLane equals: ghostLane sourceColumn.