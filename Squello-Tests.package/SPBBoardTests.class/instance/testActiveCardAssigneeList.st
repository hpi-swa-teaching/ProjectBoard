as yet unclassified
testActiveCardAssigneeList

	| assignee |
	self assert: board activeCardAssigneeListHeader equals: board activeCardAssigneeList.
	
	board activeCard: SPBCard new.
	self assert: board activeCardAssigneeListHeader equals: board activeCardAssigneeList.
	
	assignee := SPBAssignee new.
	
	board activeCard assignees: { assignee }.
	self assert: board activeCardAssigneeListHeader , {assignee} equals: board activeCardAssigneeList.