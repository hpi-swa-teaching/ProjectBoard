as yet unclassified
laneDeleted: aJsonObject

	^ {
		'action' -> #delete.
		'id' -> ((aJsonObject at: 'project_column') at: 'id').
	} asDictionary.