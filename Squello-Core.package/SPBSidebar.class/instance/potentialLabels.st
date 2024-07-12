accessing
potentialLabels
	
	^ potentialLabels 
		ifNil: [potentialLabels := self boardProvider listPossibleLabels].