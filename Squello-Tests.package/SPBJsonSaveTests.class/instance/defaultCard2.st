objects
defaultCard2

	^ SPBCard new
		title: 'this is another card';
		description: 'a';
		id: 69;
		assignees: {self defaultAssignee2} asOrderedCollection;
		labels: {self defaultLabel} asOrderedCollection;
		isClosed: false;
		yourself.