tests-cards
testUpdateDraft

	| card response |
	card := SPBCard new id: '42'; isNote: true.
	response := provider updateCard: card.
	self assert: response equals: 'updated draft 42'.