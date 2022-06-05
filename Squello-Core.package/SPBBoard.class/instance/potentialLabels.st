accessing
potentialLabels
	
	potentialLabels ifNil: [self potentialLabels: self provider listPossibleLabels].
	^ potentialLabels.