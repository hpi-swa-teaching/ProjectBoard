accessing
fakeWidgets
	
	fakeWidgets ifNil: [self fakeWidgets: (Dictionary newFrom: {})].
	^ fakeWidgets.