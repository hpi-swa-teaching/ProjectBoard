tests-labels
testAddLabelToIssue

	| card response label |
	card := SPBCard new id: '42'.
	label := SPBLabel new id: '55'; title: 'bug'.
	response := provider addLabel: label toCard: card.
	self assert: (response at: 'type') equals: 'issue'.
	self assert: (response at: 'action') equals: 'add_label'.
	self assert: (response at: 'id') equals: '55'.