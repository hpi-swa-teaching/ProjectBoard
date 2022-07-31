card changes
cardMoved: aJsonObject

	^ Dictionary newFrom: {
		'action' -> #move.
		'id' -> ((aJsonObject at: 'project_card') at: 'id').
		'columnId' -> ((aJsonObject at: 'project_card') at: 'column_id').
		'after' -> ((aJsonObject at: 'project_card') at: 'after_id').
	}.