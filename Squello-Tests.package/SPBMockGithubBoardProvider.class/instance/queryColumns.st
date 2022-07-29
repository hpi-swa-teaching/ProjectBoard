as yet unclassified
queryColumns

	| lane1 lane2 |
	lane1 := SPBLane new
		boardProvider: self;
		changeProvider: SPBGithubChangeProvider new;
		id: 1234;
		title: 'Hi squeak!';
		pasteup: SPBPluggablePasteUpMorph new;
		yourself.
	lane2 := SPBLane new
		boardProvider: self;
		changeProvider: SPBGithubChangeProvider new;
		id: 5678;
		title: 'Hi smalltalk';
		pasteup: SPBPluggablePasteUpMorph new;
		yourself.
		
	^ { lane1 . lane2 } asOrderedCollection.