as yet unclassified
testActiveCardLabelList

	| label |
	self assert: sidebar activeCardLabelListHeader equals: sidebar activeCardLabelList.
	
	sidebar activeCard: SPBCard new.
	self assert: sidebar activeCardLabelListHeader equals: sidebar activeCardLabelList.
	
	label := SPBLabel new.
	
	sidebar activeCard labels: {label}.
	self assert: sidebar activeCardLabelListHeader , {label} equals: sidebar activeCardLabelList.