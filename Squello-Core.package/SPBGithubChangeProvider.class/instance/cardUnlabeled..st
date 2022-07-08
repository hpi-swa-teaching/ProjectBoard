as yet unclassified
cardUnlabeled: aJsonObject

	^ {
		'action' -> #unlabel.
		'id' -> (aJsonObject at: 'issue') at: 'id'.
		'label' -> aJsonObject at: 'label'.
	} asDictionary.