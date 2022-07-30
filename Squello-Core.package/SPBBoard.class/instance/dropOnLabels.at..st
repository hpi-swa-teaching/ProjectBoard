drag and drop
dropOnLabels: anSPBLabel at: index
	
	| labels |
	labels := self activeCard labels.
	(anSPBLabel isKindOf: SPBLabel)
		ifFalse: [^ self inform: 'Can only drop labels'].
	(labels
		anySatisfy: [:each | each = anSPBLabel])
			ifTrue: [^ self].
	self activeCard labels add: anSPBLabel.
	self activeCard updateLabelIcons.
	self changed: #potentialLabelsList.
	self changed: #activeCardLabelList.
	self boardProvider addLabel: anSPBLabel toCard: self activeCard.