drag and drop
dropOnPotentialLabels: anSPBLabel at: aNumber
	
	anSPBLabel isLabel
		ifFalse: [^ self inform: 'Can only drop labels'].
		
	self activeCard removeLabel: anSPBLabel.
	self 
		changed: #potentialLabelsList;
		changed: #activeCardLabelList.