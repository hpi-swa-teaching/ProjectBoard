toolbuilder
addColumn 
	
	| column prompt |
	prompt := FillInTheBlankMorph request: 'Enter a column name' initialAnswer:''.
	prompt = ''
		ifTrue: [^ self].
	[column := self boardProvider createColumn: prompt]
		on: Error
		do: [:ex | ^ self errorCannotAddColumn: ex messageText].
	
	column 
		board: self;
		boardProvider: self boardProvider;
		changeProvider: self changeProvider.
	self columns add: column.
 	self updateColumns.