update sidebar
potentialAssigneesList
	
	| potentialAssignees assignees |
	potentialAssignees := self potentialAssignees deepCopy.
	assignees := self activeCard assignees.
	self activeCard isRealCard
		ifFalse: [^ self potentialAssigneesListHeader].
	potentialAssignees
		ifNil: [^ self potentialAssigneesListHeader].
	^ self potentialAssigneesListHeader, 
		potentialAssignees select: [:each | (assignees anySatisfy: [:elem | elem = each]) not].
	