as yet unclassified
queryColumns

	| lane1 lane2 |
	lane1 := SPBLane new
		provider: self;
		id: 1234;
		title: 'Hi squeak!';
		yourself.
	lane2 := SPBLane new
		provider: self;
		id: 5678;
		title: 'Hi smalltalk';
		yourself.

	^ { lane1 . lane2 } asOrderedCollection.