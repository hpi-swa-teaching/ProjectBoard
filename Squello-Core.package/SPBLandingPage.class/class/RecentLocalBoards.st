accessing
RecentLocalBoards

	RecentLocalBoards ifNil: [RecentLocalBoards := OrderedCollection new. RecentLocalBoards addFirst: 'test'].
	^ RecentLocalBoards