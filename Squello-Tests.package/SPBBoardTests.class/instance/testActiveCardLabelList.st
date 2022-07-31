as yet unclassified
testActiveCardLabelList

	| label |
	self assert: board activeCardLabelListHeader equals: board activeCardLabelList.
	
	board activeCard: SPBCard new.
	self assert: board activeCardLabelListHeader equals: board activeCardLabelList.
	
	label := SPBLabel new.
	
	board activeCard labels: {label}.
	self assert: board activeCardLabelListHeader , {label} equals: board activeCardLabelList.