as yet unclassified
cardCreated: aJsonObject

	^ {
		'action' -> #create.
		'card' -> ((aJsonObject at: 'project_card') at: 'id').
		'id' -> ((aJsonObject at: 'project_card') at: 'column_id').
		'content' -> ((aJsonObject at: 'project_card') at: 'content_url').
		'after' -> ((aJsonObject at: 'project_card') at: 'after_id').
	} asDictionary.