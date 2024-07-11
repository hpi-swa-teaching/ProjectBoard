tests-assignees
testAddAssigneeToIssue

	| card assignee response |
	card := SPBCard new id: '42'.
	assignee := SPBAssignee new username: 'dog'; id: '55'.
	response := provider addAssignee: assignee toCard: card.
	self assert: (response at: 'type') equals: 'issue'.
	self assert: (response at: 'action') equals: 'add_assignee'.
	self assert: (response at: 'id') equals: '55'.