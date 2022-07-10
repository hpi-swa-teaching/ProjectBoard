as yet unclassified
cardAssigned: aJsonObject
	
	^ {
		'action' -> #assign.
		'id' -> ((aJsonObject at: 'issue') at: 'number').
		'assignee' -> (aJsonObject at: 'assignee')
	} asDictionary.