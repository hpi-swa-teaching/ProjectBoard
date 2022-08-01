as yet unclassified
testPotentialAssigneeSelected

	| assignee anotherObject |
	
	assignee := SPBAssignee new.
	sidebar potentialAssigneeSelected: assignee.
	
	self assert: assignee equals: sidebar potentialAssigneeSelected.
	
	anotherObject := Object new.
	sidebar potentialAssigneeSelected: anotherObject.
	
	self assert: assignee equals: sidebar potentialAssigneeSelected.