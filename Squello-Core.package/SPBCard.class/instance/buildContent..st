accessing
buildContent: aString
	
	| contentJson |
	contentJson := self boardProvider queryCardContent: aString.
	self
		title: (contentJson at: 'title');
		description: (contentJson at: 'body');
		issueId: (contentJson at: 'number');
		assignees: ((contentJson at: 'assignees') collect: 
			[:assignee | SPBAssignee newFrom: assignee]) asOrderedCollection;
		labels: ((contentJson at: 'labels') collect: 
			[:label | SPBLabel newFrom: label]) asOrderedCollection;
		isClosed: (contentJson at: 'closed_by') isNil not.
	self flag: #todo. "actually find out if card is closed or not"