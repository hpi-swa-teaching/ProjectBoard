as yet unclassified
testActiveCardLabelList

	| label |
	self assert: {} equals: board activeCardLabelList.
	
	board activeCard: SPBCard new.
	self assert: {#('---used labels---')} equals: board activeCardLabelList.
	
	label := SPBLabel new.
	
	board activeCard labels: { label }.
	self assert: {'---used labels---' . label } equals: board activeCardLabelList.