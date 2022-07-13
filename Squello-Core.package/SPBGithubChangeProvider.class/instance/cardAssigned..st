as yet unclassified
cardAssigned: aJsonObject
	
	^ Dictionary newFrom: {
		'action' -> #assign.
		'id' -> ((aJsonObject at: 'issue') at: 'number').
		'assignee' -> (aJsonObject at: 'assignee')
	}.