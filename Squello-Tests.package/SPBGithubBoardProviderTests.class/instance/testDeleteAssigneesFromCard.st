tests
testDeleteAssigneesFromCard

	| card assignee response |
	card := SPBCard new.
	assignee := SPBAssignee new username: 'MatthiasCr'.
		
	response := provider deleteAssignees: {assignee} fromCard: card.
	self assert: true equals: (((response at: 'assignees') contains: 'MatthiasCr') not).
	
	