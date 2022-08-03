updating
update: aSymbol with: aDictionary

	| column |
	aSymbol = #board
		ifFalse: [^ self].
	
	((aDictionary at: 'action') = #create)
		ifTrue: [column := SPBColumn newFrom: aDictionary.
			self addColumnLocal: column].