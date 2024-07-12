updating-local
addAssigneeLocal: anSPBAssignee

	(self assignees anySatisfy: [:assignee | assignee = anSPBAssignee]) 
		ifTrue: [^ self.].

	self assignees add: anSPBAssignee.
	self updateAssigneeCount.