tests
testAddAssigneesToCard

	| card assignee response |
	card := SPBCard new.
	assignee := SPBAssignee new username: 'MatthiasCr'.
		
	response := provider addAssignees: {assignee} toCard: card.
	self assert: {'MatthiasCr'} equals: (response at: 'assignees').
	
	