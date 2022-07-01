drag and drop
dropOnLabels: aSPBLabel at: index
	
	(aSPBLabel isKindOf: SPBLabel)
		ifFalse: [^ self inform: 'Can only drop labels'].
	(self activeCard labels anySatisfy: [:each | each = aSPBLabel]) ifTrue: [^ self].
	self activeCard labels add: aSPBLabel.
	self activeCard updateLabelIcons.
	self changed: #potentialLabelsList.
	self changed: #activeCardLabelList.
	self provider addLabels: {aSPBLabel} toCard: self activeCard.