as yet unclassified
testPotentialLabelSelected
	
	| label |
	label := SPBLabel new.
	sidebar potentialLabelSelected: label.
	self assert: label equals: sidebar potentialLabelSelected.
	sidebar potentialLabelSelected: Morph new.
	self assert: label equals: sidebar potentialLabelSelected.