as yet unclassified
cardDeleted: aJsonObject

	^ Dictionary newFrom: {
		'action' -> #delete.
		'id' -> ((aJsonObject at: 'project_card') at: 'id').
	}.