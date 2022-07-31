drag and drop
dropOnLabels: anSPBLabel at: index
	
	(anSPBLabel isKindOf: SPBLabel)
		ifFalse: [^ self inform: 'Can only drop labels'].
		
	self activeCard addLabel: anSPBLabel.
	self 
		changed: #potentialLabelsList;
		changed: #activeCardLabelList.