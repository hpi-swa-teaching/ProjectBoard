update sidebar
activeCardAssigneeList

	self activeCard ifNil: [^ {}].
	self activeCard assignees ifNil: [^ {}].
	^ self activeCard assignees