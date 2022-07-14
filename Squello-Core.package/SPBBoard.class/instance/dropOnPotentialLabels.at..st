drag and drop
dropOnPotentialLabels: aSPBLabel at: index
	
	(aSPBLabel isKindOf: SPBLabel)
		ifFalse: [^ self inform: 'Can only drop labels'].
	self activeCard labels remove: aSPBLabel
			ifAbsent: [].
	self activeCard updateLabelIcons.
	self changed: #potentialLabelsList.
	self changed: #activeCardLabelList.
	self provider deleteLabel: aSPBLabel fromCard: self activeCard.