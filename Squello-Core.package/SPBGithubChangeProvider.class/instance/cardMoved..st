as yet unclassified
cardMoved: aJsonObject

	^ {
		'action' -> #move.
		'id' -> ((aJsonObject at: 'project_card') at: 'id').
		'laneId' -> ((aJsonObject at: 'project_card') at: 'column_id').
		'after' -> ((aJsonObject at: 'project_card') at: 'after_id').
	} asDictionary.