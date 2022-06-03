as yet unclassified
testAssigneeSelected

	| assignee anotherObject |
	
	assignee := SPBAssignee new.
	board assigneeSelected: assignee.
	
	self assert: assignee equals: board assigneeSelected.
	
	anotherObject := Object new.
	board assigneeSelected: anotherObject.
	
	self assert: assignee equals: board assigneeSelected.