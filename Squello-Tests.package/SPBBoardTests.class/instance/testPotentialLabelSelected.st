as yet unclassified
testPotentialLabelSelected
	
	| label |
	label := SPBLabel new.
	board potentialLabelSelected: label.
	self assert: label equals: board potentialLabelSelected.
	board potentialLabelSelected: Morph new.
	self assert: label equals: board potentialLabelSelected.