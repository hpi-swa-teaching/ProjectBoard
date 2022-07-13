as yet unclassified
laneDeleted: aJsonObject

	^ Dictionary newFrom: {
		'action' -> #delete.
		'id' -> ((aJsonObject at: 'project_column') at: 'id').
	}.