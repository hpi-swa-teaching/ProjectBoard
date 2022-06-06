accessing
labelIcon: aNumber

	aNumber = 1 ifTrue: [^ nil].
	^ (self activeCard labels at: aNumber - 1) asForm.