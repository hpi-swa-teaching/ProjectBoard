as yet unclassified
columnCreated: aJsonObject

	^ Dictionary newFrom: {
		'action' -> #create.
		'id' -> ((aJsonObject at: 'project_column') at: 'id').
		'name' -> ((aJsonObject at: 'project_column') at: 'name')
	}.