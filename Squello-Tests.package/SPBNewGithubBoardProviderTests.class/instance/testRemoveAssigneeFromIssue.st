tests-assignees
testRemoveAssigneeFromIssue

	| card assignee response |
	card := SPBCard new id: '42'.
	assignee := SPBAssignee new username: 'dog'; id: '55'.
	response := provider deleteAssignee: assignee fromCard: card.
	self assert: (response at: 'type') equals: 'issue'.
	self assert: (response at: 'action') equals: 'delete_assignee'.
	self assert: (response at: 'id') equals: '55'.