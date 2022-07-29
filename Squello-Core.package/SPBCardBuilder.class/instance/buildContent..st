building
buildContent: aString
	
	| contentJson |
	contentJson := self boardProvider queryCardContent: aString.
	self card
		title: (contentJson at: 'title');
		description: (contentJson at: 'body');
		issueId: (contentJson at: 'number');
		assignees: ((contentJson at: 'assignees') collect: 
			[:each | SPBAssignee newFrom: each]) asOrderedCollection;
		labels: (self buildLabels: (contentJson at: 'labels')).