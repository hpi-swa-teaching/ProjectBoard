as yet unclassified
cardUnassigned: aJsonObject

	^ Dictionary newFrom: {
		'action' -> #unassign.
		'id' -> ((aJsonObject at: 'issue') at: 'number').
		'assignee' -> (aJsonObject at: 'assignee').
	}.