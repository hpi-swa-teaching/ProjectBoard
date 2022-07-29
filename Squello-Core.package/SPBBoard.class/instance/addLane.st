toolbuilder
addLane 
	
	| lane prompt |
	prompt := FillInTheBlankMorph request: 'Enter a lane name' initialAnswer:''.
	(prompt = '')
		ifTrue: [^ self].
	lane := self boardProvider createColumn: prompt.
  
	lane 
		board: self;
		boardProvider: self boardProvider;
		changeProvider: self changeProvider.
	self lanes add: lane.
 	self updateLanesWithCards.