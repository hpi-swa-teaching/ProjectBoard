accessing
labelSelected: anSPBLabel

	anSPBLabel isLabel
		ifFalse: [^ self.].
	labelSelected := anSPBLabel.
	self changed: #labelSelected.