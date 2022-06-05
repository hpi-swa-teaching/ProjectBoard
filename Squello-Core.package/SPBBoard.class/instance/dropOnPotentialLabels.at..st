drag and drop
dropOnPotentialLabels: anSPBLabel at: index
	
	(anSPBLabel isKindOf: SPBLabel)
		ifFalse: [^ self inform: 'Can only drop labels'].
	self activeCard labels remove: anSPBLabel ifAbsent: [].
	self changed: #potentialLabelsList.
	self changed: #activeCardLabelList.
	self provider deleteLabel: anSPBLabel fromCard: self activeCard.