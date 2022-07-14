update sidebar
potentialAssigneesList
	
	| assignees |
	assignees := self potentialAssignees deepCopy.
	self activeCard
		ifNil: [^ {}].
	assignees
		ifNil: [^ {#('---unassigned---')}].
	^ #('---unassigned---'), assignees select: [:each | (self activeCard assignees anySatisfy: [:elem | elem = each]) not].
	