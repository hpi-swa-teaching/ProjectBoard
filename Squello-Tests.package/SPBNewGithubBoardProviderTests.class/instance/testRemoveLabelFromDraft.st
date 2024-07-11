tests-labels
testRemoveLabelFromDraft

	| card response |
	card := SPBCard new id: '42'; isNote: true.
	response := provider deleteLabel: #test fromCard: card.
	self assert: response.