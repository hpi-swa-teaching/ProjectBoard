as yet unclassified
testSourceColumn

	| sourceColumn |
	sourceColumn := Morph new.
	
	self assert: nil equals: ghostColumn sourceColumn.
	ghostColumn sourceColumn: sourceColumn.
	self assert: sourceColumn equals: ghostColumn sourceColumn.