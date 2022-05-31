tests
testAddLabelsToCard

	| card label response |
	card := SPBCard new.
	label := SPBLabel new title: 'label label tralalalala'.
		
	response := provider addLabels: {label} toCard: card.
	self assert: {'label label tralalalala'} equals: (response at: 'labels').
	
	