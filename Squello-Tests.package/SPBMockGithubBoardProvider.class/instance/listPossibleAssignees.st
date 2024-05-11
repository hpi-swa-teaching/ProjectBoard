as yet unclassified
listPossibleAssignees

	| assignee1 assignee2 |
	
	assignee1 := JsonObject new
		at: 'login' put: 'user1';
		at: 'id' put: 1;
		at: 'avatar_url' put: 'url';
		yourself.
	assignee2 := JsonObject new
		at: 'login' put: 'user2';
		at: 'id' put: 2;
		at: 'avatar_url' put: 'url';
		yourself.
		
	^ {assignee1 . assignee2} collect: [:each | SPBAssignee newFrom: each].