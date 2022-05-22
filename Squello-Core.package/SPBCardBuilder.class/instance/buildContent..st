as yet unclassified
buildContent: aString
	
	| contentJson |
	contentJson := self provider queryCardContent: aString.
	self card
		title: (contentJson at: 'title');
		description: (contentJson at: 'body');
		issueId: (contentJson at: 'number');
		user: ((contentJson at: 'user') at: 'login');
		repo: ((contentJson at: 'repository_url') asUrl fileName).