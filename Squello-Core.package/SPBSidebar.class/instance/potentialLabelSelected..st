accessing
potentialLabelSelected: anSPBLabel

	(anSPBLabel isKindOf: SPBLabel)
		ifFalse: [^ self].
	potentialLabelSelected := anSPBLabel.
	self changed: #potentialLabelSelected.