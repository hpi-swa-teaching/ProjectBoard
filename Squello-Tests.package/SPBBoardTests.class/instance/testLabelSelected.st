as yet unclassified
testLabelSelected
	
	| label |
	label := SPBLabel new.
	board labelSelected: label.
	self assert: label equals: board labelSelected.
	board labelSelected: Morph new.
	self assert: label equals: board labelSelected.