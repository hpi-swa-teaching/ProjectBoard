accessing
labelSelected: anObject

	(anObject isKindOf: SPBLabel)
		ifFalse: [^ self].
	labelSelected := anObject.
	self changed: #labelSelected.