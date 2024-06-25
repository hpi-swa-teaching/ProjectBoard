objects
defaultBoard

	^ SPBBoard new
		boardName: 'test board';
		columns: {self defaultColumn. self defaultColumn2} asOrderedCollection;
		yourself.