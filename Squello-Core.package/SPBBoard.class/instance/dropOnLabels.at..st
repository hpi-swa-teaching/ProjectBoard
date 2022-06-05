drag and drop
dropOnLabels: anSPBLabel at: index
	
	(anSPBLabel isKindOf: SPBLabel)
		ifFalse: [^ self inform: 'Can only drop labels'].
	(self activeCard labels anySatisfy: [:each | each = anSPBLabel]) ifTrue: [^ self].
	self activeCard labels add: anSPBLabel.
	self changed: #potentialLabelsList.
	self changed: #activeCardLabelList.
	self provider addLabels: {anSPBLabel} toCard: self activeCard.