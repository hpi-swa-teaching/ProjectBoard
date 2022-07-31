accessing
labelSelected: anSPBLabel

	(anSPBLabel isKindOf: SPBLabel)
		ifFalse: [^ self].
	labelSelected := anSPBLabel.
	self changed: #labelSelected.