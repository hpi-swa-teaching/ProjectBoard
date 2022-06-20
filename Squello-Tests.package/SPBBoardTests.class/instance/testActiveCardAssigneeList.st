as yet unclassified
testActiveCardAssigneeList

	| assignee |
	self assert: {} equals: board activeCardAssigneeList.
	
	board activeCard: SPBCard new.
	self assert: {#('---assigned---')} equals: board activeCardAssigneeList.
	
	assignee := SPBAssignee new.
	
	board activeCard assignees: { assignee }.
	self assert: {'---assigned---' . assignee } equals: board activeCardAssigneeList.