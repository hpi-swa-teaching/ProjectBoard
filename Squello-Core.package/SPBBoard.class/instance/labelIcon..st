accessing
labelIcon: aNumber

	| labels |
	aNumber = 1 
		ifTrue: [^ ToolIcons blank].
	labels := self activeCard labels.
	^ (labels at: aNumber - 1) asForm.