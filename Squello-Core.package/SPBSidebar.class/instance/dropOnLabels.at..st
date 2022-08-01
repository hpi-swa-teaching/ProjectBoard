drag and drop
dropOnLabels: anSPBLabel at: aNumber
	
	(anSPBLabel isKindOf: SPBLabel)
		ifFalse: [^ self inform: 'Can only drop labels'].
		
	self activeCard addLabel: anSPBLabel.
	self 
		changed: #potentialLabelsList;
		changed: #activeCardLabelList.