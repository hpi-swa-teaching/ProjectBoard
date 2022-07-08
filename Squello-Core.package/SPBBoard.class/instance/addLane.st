toolbuilder
addLane 
	
	| lane prompt|
	prompt := FillInTheBlankMorph request: 'Enter a lane name' initialAnswer:''.
	lane := self provider createColumn: prompt.
	lane 
		board: self;
		provider: self provider;
		changeProvider: self changeProvider.
	self lanes add: lane.
 	self updateLanesWithCards.