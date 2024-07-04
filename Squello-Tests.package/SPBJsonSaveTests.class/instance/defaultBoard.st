objects
defaultBoard

	| provider |
	provider := SPBLocalBoardProvider new.
	"simulate card adding"
	provider nextId.
	provider nextId.
	^ SPBBoard new
		boardName: 'test board';
		makeLocal: provider;
		columns: {self defaultColumn. self defaultColumn2} asOrderedCollection;
		yourself.