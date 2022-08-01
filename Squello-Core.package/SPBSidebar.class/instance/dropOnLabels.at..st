drag and drop
dropOnLabels: anSPBLabel at: aNumber
	
	anSPBLabel isLabel
		ifFalse: [^ self inform: 'Can only drop labels'].
		
	self activeCard addLabel: anSPBLabel.
	self 
		changed: #potentialLabelsList;
		changed: #activeCardLabelList.