accessing
fakeWidgets
	
	fakeWidgets ifNil: [self fakeWidgets: {} asDictionary].
	^ fakeWidgets.