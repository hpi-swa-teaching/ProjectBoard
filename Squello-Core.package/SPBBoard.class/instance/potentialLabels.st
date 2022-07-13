accessing
potentialLabels
	
	^ potentialLabels ifNil: [potentialLabels := self provider listPossibleLabels].