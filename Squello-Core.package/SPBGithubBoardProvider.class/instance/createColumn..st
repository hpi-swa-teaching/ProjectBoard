columns
createColumn: aString

	| payload errorMsg laneJson |
	payload := Dictionary newFrom: {'name' -> aString}.
	laneJson := self api createColumn: payload inProject: self projectID.
	(laneJson includesKey: 'errors') ifTrue: 
		[errorMsg := (laneJson at: 'errors') asString.
		(DialogWindow new 
			message: (errorMsg copyFrom: 4 to: errorMsg size - 2);
			title: 'Error: Cannot add lane';
			position: ActiveHand cursorPoint) openInWorld.
			^ self].
	^ SPBLane newFrom: laneJson.
