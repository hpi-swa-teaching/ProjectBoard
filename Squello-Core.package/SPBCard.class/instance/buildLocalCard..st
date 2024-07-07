accessing
buildLocalCard: aJsonObject
	
	self 
		title: (aJsonObject at: 'title');
		description: (aJsonObject at: 'body');
		id: (aJsonObject at: 'id');
		issueId: (aJsonObject at: 'id');
		isClosed: (aJsonObject at: 'closed');
		isNote: (aJsonObject at: 'isNote');
		assignees: ((aJsonObject at: 'assignees') collect:
			[:each| SPBAssignee newFrom: each]) asOrderedCollection;
		labels: ((aJsonObject at: 'labels') collect:
			[:each| SPBLabel newFrom: each]) asOrderedCollection.