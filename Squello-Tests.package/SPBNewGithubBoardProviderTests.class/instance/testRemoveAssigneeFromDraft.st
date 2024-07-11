tests-assignees
testRemoveAssigneeFromDraft

	| card assignee response assignee2 |
	card := SPBCard new id: '42'.
	card isNote: true.
	assignee := SPBAssignee new username: 'dog'; id: '55'.
	assignee2 := SPBAssignee new username: 'cat'; id: '66'.
	card assignees: {assignee. assignee2} asOrderedCollection.
	response := provider deleteAssignee: assignee fromCard: card.
	self assert: (response at: 'type') equals: 'draft'.
	self assert: (response at: 'action') equals: 'update_assignees'.
	self assert: ((response at: 'ids') includesSubstring: assignee id) not.
	self assert: ((response at: 'ids') includesSubstring: assignee2 id).