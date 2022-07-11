as yet unclassified
cardUnlabeled: aJsonObject

	^ {
		'action' -> #unlabel.
		'id' -> ((aJsonObject at: 'issue') at: 'number').
		'label' -> (aJsonObject at: 'label').
	} asDictionary.