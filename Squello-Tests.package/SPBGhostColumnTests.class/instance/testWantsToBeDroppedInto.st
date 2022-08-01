as yet unclassified
testWantsToBeDroppedInto

	| targetColumn sourceColumn lanes |
	targetColumn := Morph new.
	self deny: (ghostColumn wantsToBeDroppedInto: targetColumn).
	
	targetColumn := SPBMockColumn new.
	sourceColumn := SPBMockColumn new.
	lanes := {sourceColumn . targetColumn} asOrderedCollection.
	
	ghostColumn sourceColumn: sourceColumn.
	ghostColumn position: (100@15).
	sourceColumn position: (500@1).
	targetColumn position: (90@10).
	targetColumn columns: lanes.
	sourceColumn columns: lanes.
	
	self deny: (ghostColumn wantsToBeDroppedInto: targetColumn).
	self assert: 2 equals: sourceColumn newIndex.