as yet unclassified
laneMoved: aJsonObject

	^ {
		'action' -> #move.
		'id' -> ((aJsonObject at: 'project_column') at: 'id').
		'after' -> ((aJsonObject at: 'project_column') at: 'after_id').
	} asDictionary.