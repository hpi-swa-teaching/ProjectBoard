as yet unclassified
cardLabeled: aJsonObject

	^ {
		'action' -> #label.
		'id' -> (aJsonObject at: 'issue') at: 'id'.
		'label' -> aJsonObject at: 'label'.
	} asDictionary.