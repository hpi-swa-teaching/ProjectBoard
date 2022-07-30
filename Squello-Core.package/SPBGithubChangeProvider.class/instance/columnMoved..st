as yet unclassified
columnMoved: aJsonObject

	^ Dictionary newFrom: {
		'action' -> #move.
		'id' -> ((aJsonObject at: 'project_column') at: 'id').
		'after' -> ((aJsonObject at: 'project_column') at: 'after_id').
	}.