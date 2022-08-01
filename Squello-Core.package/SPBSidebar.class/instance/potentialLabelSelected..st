accessing
potentialLabelSelected: anSPBLabel

	anSPBLabel isLabel
		ifFalse: [^ self].
	potentialLabelSelected := anSPBLabel.
	self changed: #potentialLabelSelected.