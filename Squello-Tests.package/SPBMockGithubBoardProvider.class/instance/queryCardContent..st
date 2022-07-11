as yet unclassified
queryCardContent: anUrl

	| userJson |
	userJson := JsonObject new
		at: 'id' put: 37272151;
		at: 'login' put: 'test';
		at: 'url' put: 'https://api.github.com/users/test'.
		
	^ JsonObject new
		at: 'id' put: 1235941519;
		at: 'title' put: 'Found a bug';
		at: 'body' put: nil;
		at: 'number' put: 3;
		at: 'url' put: 'https://api.github.com/repos/test/test/issues/3';
		at: 'repository_url' put: 'https://api.github.com/repos/test/test';
		at: 'assignees' put: #();
		at: 'labels' put: #();
		at: 'user' put: userJson
	
	