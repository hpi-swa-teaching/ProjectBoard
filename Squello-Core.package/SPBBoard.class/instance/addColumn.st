toolbuilder
addColumn 
	
	| column prompt |
	prompt := FillInTheBlankMorph request: 'Enter a column name' initialAnswer:''.
	prompt = ''
		ifTrue: [^ self].
	[column := self boardProvider createColumn: prompt]
		on: Error
		do: [:error | ^ self errorCannotAddColumn: error messageText].
	
	self addColumnLocal: column.