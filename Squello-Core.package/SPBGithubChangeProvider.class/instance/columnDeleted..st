as yet unclassified
columnDeleted: aJsonObject

	^ Dictionary newFrom: {
		'action' -> #delete.
		'id' -> ((aJsonObject at: 'project_column') at: 'id').
	}.