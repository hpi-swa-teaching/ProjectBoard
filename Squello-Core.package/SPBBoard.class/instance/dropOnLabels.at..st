drag and drop
dropOnLabels: anSPBLabel at: index
	
	(anSPBLabel isKindOf: SPBLabel)
		ifFalse: [^ self inform: 'Can only drop labels'].
	(self activeCard labels anySatisfy: [:each | each = anSPBLabel]) ifTrue: [^ self].
	self activeCard labels add: anSPBLabel.
	self activeCard updateLabelIcons.
	self changed: #potentialLabelsList.
	self changed: #activeCardLabelList.
	self provider addLabels: {anSPBLabel} toCard: self activeCard.