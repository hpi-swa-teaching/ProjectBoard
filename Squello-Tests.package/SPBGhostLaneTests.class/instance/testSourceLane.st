as yet unclassified
testSourceLane

	| sourceLane |
	sourceLane := Morph new.
	
	self assert: nil equals: ghostLane sourceLane.
	ghostLane sourceLane: sourceLane.
	self assert: sourceLane equals: ghostLane sourceLane.