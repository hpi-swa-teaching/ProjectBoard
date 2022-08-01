updating
update: aSymbol with: aDictionary

	| column |
	aSymbol = #board
		ifFalse: [^ self].
	
	((aDictionary at: 'action') = #create)
		ifTrue: [column := SPBColumn newFrom: aDictionary.
			column
				board: self;
				boardProvider: self boardProvider;
				changeProvider: self changeProvider.
			self columns add: column.
			self updateColumns].