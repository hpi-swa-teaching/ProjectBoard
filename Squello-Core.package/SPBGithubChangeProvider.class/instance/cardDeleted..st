as yet unclassified
cardDeleted: aJsonObject

	^ {
		'action' -> #delete.
		'id' -> (aJsonObject at: 'project_card') at: 'id'.
	} asDictionary.