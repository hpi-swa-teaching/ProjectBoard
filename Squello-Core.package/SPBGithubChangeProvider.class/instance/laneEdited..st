as yet unclassified
laneEdited: aJsonObject

	^ {
		'action' -> #edit.
		'id' -> ((aJsonObject at: 'project_column') at: 'id').
		'title' -> ((aJsonObject at: 'project_column') at: 'name').
	} asDictionary.