lists
potentialAssigneesList
	
	| potentialAssignees assignees |
	potentialAssignees := self potentialAssignees deepCopy.
	assignees := self activeCard assignees.
	self activeCard isRealCard
		ifFalse: [^ self potentialAssigneesListHeader].
	potentialAssignees
		ifNil: [^ self potentialAssigneesListHeader].
	^ self potentialAssigneesListHeader, 
		potentialAssignees select: [:potentialAssignee | (assignees anySatisfy: [:assignee | assignee = potentialAssignee ]) not].