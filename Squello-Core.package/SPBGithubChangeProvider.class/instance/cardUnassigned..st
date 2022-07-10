as yet unclassified
cardUnassigned: aJsonObject

	^ {
		'action' -> #unassign.
		'id' -> ((aJsonObject at: 'issue') at: 'number').
		'assignee' -> (aJsonObject at: 'assignee').
	} asDictionary.