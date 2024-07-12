lists
potentialAssigneesList
	
	| potentialAssignees assignees |
	potentialAssignees := self potentialAssignees deepCopy.
	assignees := self activeCard assignees.
	(self activeCard isRealCard not or: [potentialAssignees isNil])
		ifTrue: [^ self potentialAssigneesListHeader].
	^ self potentialAssigneesListHeader, 
		potentialAssignees 
			select: [:potentialAssignee | (assignees includes: potentialAssignee) not].