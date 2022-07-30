drag and drop
dropOnPotentialLabels: anSPBLabel at: index
	
	(anSPBLabel isKindOf: SPBLabel)
		ifFalse: [^ self inform: 'Can only drop labels'].
	self activeCard labels remove: anSPBLabel
		ifAbsent: [].
	self activeCard updateLabelIcons.
	self changed: #potentialLabelsList.
	self changed: #activeCardLabelList.
	self boardProvider deleteLabel: anSPBLabel fromCard: self activeCard.