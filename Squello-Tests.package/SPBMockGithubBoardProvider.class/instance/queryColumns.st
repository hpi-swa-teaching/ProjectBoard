as yet unclassified
queryColumns

	| column1 column2 |
	column1 := SPBColumn new
		boardProvider: self;
		id: 1234;
		title: 'Hi squeak!';
		pasteup: SPBPluggablePasteUpMorph new;
		yourself.
	column2 := SPBColumn new
		boardProvider: self;
		id: 5678;
		title: 'Hi smalltalk';
		pasteup: SPBPluggablePasteUpMorph new;
		yourself.
		
	^ { column1 . column2 } asOrderedCollection.