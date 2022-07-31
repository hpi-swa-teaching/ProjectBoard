updating-local
removeAssigneeLocal: anSPBAssignee

	self assignees remove: anSPBAssignee 
		ifAbsent: [].
	self updateAssigneeCount.