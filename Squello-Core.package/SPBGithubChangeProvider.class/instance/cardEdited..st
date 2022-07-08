as yet unclassified
cardEdited: aJsonObject

	^ {
		'action' -> #edit.
		'id' -> (aJsonObject at: 'issue') at: 'id'.
		'title' -> (aJsonObject at: 'issue') at: 'title'.
		'body' -> (aJsonObject at: 'issue') at: 'body'.
	} asDictionary.