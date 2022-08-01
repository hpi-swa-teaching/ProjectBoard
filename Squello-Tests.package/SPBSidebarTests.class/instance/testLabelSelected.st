as yet unclassified
testLabelSelected
	
	| label |
	label := SPBLabel new.
	sidebar labelSelected: label.
	self assert: label equals: sidebar labelSelected.
	sidebar labelSelected: Morph new.
	self assert: label equals: sidebar labelSelected.