tests-labels
testAddLabelToDraft

	| card response |
	card := SPBCard new id: '42'; isNote: true.
	response := provider addLabel: #test toCard: card.
	self assert: response.