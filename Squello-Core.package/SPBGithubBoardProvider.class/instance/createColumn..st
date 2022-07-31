columns
createColumn: aString

	| payload errorMsg columnJson |
	payload := Dictionary newFrom: {'name' -> aString}.
	columnJson := self api createColumn: payload inProject: self projectId.
	(columnJson includesKey: 'errors') 
		ifTrue: [errorMsg := (columnJson at: 'errors') asString.
			(DialogWindow new 
				message: (errorMsg copyFrom: 4 to: errorMsg size - 2);
				title: 'Error: Cannot add lane';
				position: ActiveHand cursorPoint) 
			openInWorld.
			^ #error].
	^ SPBColumn newFrom: columnJson.
