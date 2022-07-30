as yet unclassified
testWantsToBeDroppedInto

	| targetLane sourceLane lanes |
	targetLane := Morph new.
	self deny: (ghostLane wantsToBeDroppedInto: targetLane).
	
	targetLane := SPBMockLane new.
	sourceLane := SPBMockLane new.
	lanes := {sourceLane . targetLane} asOrderedCollection.
	
	ghostLane sourceColumn: sourceLane.
	ghostLane position: (100@15).
	sourceLane position: (500@1).
	targetLane position: (90@10).
	targetLane columns: lanes.
	sourceLane columns: lanes.
	
	self deny: (ghostLane wantsToBeDroppedInto: targetLane).
	self assert: 2 equals: sourceLane newIndex.