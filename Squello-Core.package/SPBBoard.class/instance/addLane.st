toolbuilder
addLane 
	
	| lane laneJson prompt errorMsg|
	prompt := FillInTheBlankMorph request: 'Enter a lane name' initialAnswer:''.
	laneJson := self provider createColumn: prompt.
	(laneJson includesKey: 'errors') ifTrue: 
		[errorMsg := (laneJson at: 'errors') asString.
		(DialogWindow new 
			message: (errorMsg copyFrom: 4 to: errorMsg size -2 );
			title: 'Error: Cannot add lane';
			position: ActiveHand cursorPoint) openInWorld.
			^ self].
	lane := SPBLane newFrom: laneJson.
	lane 
		board: self;
		provider: self provider.
	self lanes add: lane.
	lane jsonCards: {} asOrderedCollection.
 	self updateLanesWithCards.