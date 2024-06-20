singleton
defaultSaver
	
	instance ifNil: [instance := SPBBoardSaver new].
	^ instance.