updating
update: aSymbol with: aDictionary

	| lane |
	aSymbol = #board ifFalse: [^ self].
	
	((aDictionary at: 'action') = #create) ifTrue: 
		[lane := SPBLane newFrom: aDictionary.
		lane
			board: self;
			provider: self provider;
			changeProvider: self changeProvider.
		self lanes add: lane.
		self updateLanesWithCards].