labels
listPossibleLabels

	^ (self api listPossibleLabelsForProject: self projectId) 
		collect: [:each| SPBLabel newFrom: each].