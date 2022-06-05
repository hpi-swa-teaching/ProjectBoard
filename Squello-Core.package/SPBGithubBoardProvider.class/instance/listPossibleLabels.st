labels
listPossibleLabels

	^ (self api listPossibleLabelsForUser: self user repo: self repo) 
		collect: [:each | SPBLabel newFrom: each].