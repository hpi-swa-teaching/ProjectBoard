as yet unclassified
testDropOnAssignees

	| activeCard assignee1 assignee2 boardProvider |
	activeCard := SPBCard new.
	boardProvider := SPBMockGithubBoardProvider new.
	assignee1 := SPBAssignee new username: 'uncoolerUser'; id: 1.
	assignee2 := SPBAssignee new username: 'coolerUser'; id: 2.
	activeCard assignees: (OrderedCollection newFrom: {assignee1}).
	activeCard boardProvider: boardProvider.
	board activeCard: activeCard.
	
	board dropOnAssignees: assignee2 at: 3.
	self assert: (board activeCard assignees contains: [:each | each =  assignee2]).
	self assert: 2 equals: board activeCard assignees size.
	self assert: activeCard equals: boardProvider card.
	self assert: assignee2 equals: boardProvider assignee.