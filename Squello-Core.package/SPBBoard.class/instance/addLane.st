toolbuilder
addLane 
	
	| lane laneJson prompt |
	prompt := FillInTheBlank request: 'Enter a lane name' initialAnswer:''.
    prompt = '' ifTrue: [^ self].
	laneJson := self provider createColumn: prompt.
	lane := SPBLane newFrom: laneJson.
	lane 
		board: self;
		provider: self provider.
	self lanes add: lane.
	lane jsonCards: {} asOrderedCollection.
 	self updateLanesWithCards.