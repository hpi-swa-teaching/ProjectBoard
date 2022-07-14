accessing
labelIcon: aNumber

	aNumber = 1 
		ifTrue: [^ ToolIcons blank].
	^ (self activeCard labels at: aNumber - 1) asForm.