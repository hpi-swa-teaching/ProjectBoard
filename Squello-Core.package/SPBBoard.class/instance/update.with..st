updating
update: aSymbol with: aDictionary

	| lane |
	aSymbol = #board
		ifFalse: [^ self].
	
	((aDictionary at: 'action') = #create)
		ifTrue: [lane := SPBLane newFrom: aDictionary.
			lane
				board: self;
				boardProvider: self boardProvider;
				changeProvider: self changeProvider.
			self lanes add: lane.
			self updateLanesWithCards].