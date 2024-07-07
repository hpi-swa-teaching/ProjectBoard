objects
defaultCard

	^ SPBCard new
		title: 'this is the card title';
		description: 'this is the description';
		id: 42;
		assignees: {self defaultAssignee. self defaultAssignee2} asOrderedCollection;
		labels: {self defaultLabel. self defaultLabel2} asOrderedCollection;
		isClosed: true;
		yourself.