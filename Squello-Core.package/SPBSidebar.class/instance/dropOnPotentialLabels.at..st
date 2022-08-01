drag and drop
dropOnPotentialLabels: anSPBLabel at: aNumber
	
	(anSPBLabel isKindOf: SPBLabel)
		ifFalse: [^ self inform: 'Can only drop labels'].
		
	self activeCard removeLabel: anSPBLabel.
	self 
		changed: #potentialLabelsList;
		changed: #activeCardLabelList.