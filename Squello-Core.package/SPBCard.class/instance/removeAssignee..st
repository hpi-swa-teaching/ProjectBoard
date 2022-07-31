updating-remote
removeAssignee: anSPBAssignee

	self removeAssigneeLocal: anSPBAssignee.
	self boardProvider deleteAssignee: anSPBAssignee fromCard: self.