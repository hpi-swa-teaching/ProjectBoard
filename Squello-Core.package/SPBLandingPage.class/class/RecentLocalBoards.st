accessing
RecentLocalBoards

	RecentLocalBoards
		ifNil: [RecentLocalBoards := OrderedCollection new.].
	^ RecentLocalBoards