as yet unclassified
testPotentialAssigneeSelected

	| assignee anotherObject |
	
	assignee := SPBAssignee new.
	board potentialAssigneeSelected: assignee.
	
	self assert: assignee equals: board potentialAssigneeSelected.
	
	anotherObject := Object new.
	board potentialAssigneeSelected: anotherObject.
	
	self assert: assignee equals: board potentialAssigneeSelected.