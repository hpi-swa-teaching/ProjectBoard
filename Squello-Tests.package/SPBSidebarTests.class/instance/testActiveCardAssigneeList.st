as yet unclassified
testActiveCardAssigneeList

	| assignee |
	self assert: sidebar activeCardAssigneeListHeader equals: sidebar activeCardAssigneeList.
	
	sidebar activeCard: SPBCard new.
	self assert: sidebar activeCardAssigneeListHeader equals: sidebar activeCardAssigneeList.
	
	assignee := SPBAssignee new.
	
	sidebar activeCard assignees: { assignee }.
	self assert: sidebar activeCardAssigneeListHeader , {assignee} equals: sidebar activeCardAssigneeList.