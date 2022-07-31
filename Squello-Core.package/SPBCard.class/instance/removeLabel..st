updating-remote
removeLabel: anSPBLabel

	self removeLabelLocal: anSPBLabel.
	self boardProvider deleteLabel: anSPBLabel fromCard: self.