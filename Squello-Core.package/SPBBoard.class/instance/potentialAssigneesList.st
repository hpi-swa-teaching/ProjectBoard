update sidebar
potentialAssigneesList
	
	| potentialAssignees assignees |
	potentialAssignees := self potentialAssignees deepCopy.
	self activeCard
		ifNil: [^ {}].
	assignees := self activeCard assignees.
	potentialAssignees
		ifNil: [^ {#('---unassigned---')}].
	^ #('---unassigned---'), 
		potentialAssignees select: [:each | (assignees anySatisfy: [:elem | elem = each]) not].
	