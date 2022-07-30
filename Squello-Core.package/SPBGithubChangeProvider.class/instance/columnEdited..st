as yet unclassified
columnEdited: aJsonObject

	^ Dictionary newFrom: {
		'action' -> #edit.
		'id' -> ((aJsonObject at: 'project_column') at: 'id').
		'title' -> ((aJsonObject at: 'project_column') at: 'name').
	}.