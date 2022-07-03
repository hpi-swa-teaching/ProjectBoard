accessing
potentialLabelIcon: aNumber

	aNumber = 1 ifTrue: [^ nil].
	^ (self potentialLabelsList at: aNumber) asForm.