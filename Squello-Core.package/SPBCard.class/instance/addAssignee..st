updating-remote
addAssignee: anSPBAssignee

	self addAssigneeLocal: anSPBAssignee.
	self boardProvider addAssignee: anSPBAssignee toCard: self.