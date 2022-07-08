as yet unclassified
cardAssigned: aJsonObject
	
	^ {
		'action' -> #assign.
		'id' -> (aJsonObject at: 'issue') at: 'id'.
		'assignee' -> SPBAssignee newFrom: (aJsonObject at: 'assignee')
	} asDictionary.