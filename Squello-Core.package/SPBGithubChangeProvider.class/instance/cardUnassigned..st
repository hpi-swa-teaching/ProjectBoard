as yet unclassified
cardUnassigned: aJsonObject

	^ {
		'action' -> #unassign.
		'id' -> (aJsonObject at: 'issue') at: 'id'.
		'assignee' -> SPBAssignee newFrom: (aJsonObject at: 'assignee').
	} asDictionary.