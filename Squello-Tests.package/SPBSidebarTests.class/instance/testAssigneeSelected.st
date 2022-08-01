as yet unclassified
testAssigneeSelected

	| assignee anotherObject |
	
	assignee := SPBAssignee new.
	sidebar assigneeSelected: assignee.
	
	self assert: assignee equals: sidebar assigneeSelected.
	
	anotherObject := Object new.
	sidebar assigneeSelected: anotherObject.
	
	self assert: assignee equals: sidebar assigneeSelected.