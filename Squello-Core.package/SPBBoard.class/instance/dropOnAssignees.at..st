drag and drop
dropOnAssignees: anSPBAssignee at: index
	
	(anSPBAssignee isKindOf: SPBAssignee)
		ifFalse: [^ self inform: 'Can only drop assignees'].
	(self activeCard assignees anySatisfy: [:each | each = anSPBAssignee]) ifTrue: [^ self].
	self activeCard assignees add: anSPBAssignee.
	self changed: #potentialAssigneesList.
	self changed: #activeCardAssigneeList.
	self provider addAssignees: {anSPBAssignee} toCard: self activeCard.