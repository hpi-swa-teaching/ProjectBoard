accessing
potentialLabelIcon: aNumber

	aNumber = 1
		ifTrue: [^ ToolIcons blank].
	^ (self potentialLabelsList at: aNumber) asForm.