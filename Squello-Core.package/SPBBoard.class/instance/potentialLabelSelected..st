accessing
potentialLabelSelected: anObject

	(anObject isKindOf: SPBLabel)
		ifFalse: [^ self].
	potentialLabelSelected := anObject.
	self changed: #potentialLabelSelected.