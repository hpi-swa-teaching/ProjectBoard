accessing
boardNr
	
	boardNr ifNil: [self boardNr: 1].
	^ boardNr.