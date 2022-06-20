accessing
calledSymbols

	calledSymbols ifNil: [self calledSymbols: OrderedCollection new].
	^ calledSymbols.