toolbuilder
addColumn 
	
	| column prompt |
	prompt := FillInTheBlankMorph request: 'Enter a lane name' initialAnswer:''.
	prompt = ''
		ifTrue: [^ self].
	column := self boardProvider createColumn: prompt.
	column = #error
		ifTrue: [^ self].
	
	column 
		board: self;
		boardProvider: self boardProvider;
		changeProvider: self changeProvider.
	self columns add: column.
 	self updateColumnsWithCards.