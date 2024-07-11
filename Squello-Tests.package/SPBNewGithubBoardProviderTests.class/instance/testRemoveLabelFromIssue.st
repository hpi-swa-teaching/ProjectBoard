tests-labels
testRemoveLabelFromIssue

	| card response label |
	card := SPBCard new id: '42'.
	label := SPBLabel new id: '55'; title: 'bug'.
	response := provider deleteLabel: label fromCard: card.
	self assert: (response at: 'type') equals: 'issue'.
	self assert: (response at: 'action') equals: 'delete_label'.
	self assert: (response at: 'id') equals: '55'.