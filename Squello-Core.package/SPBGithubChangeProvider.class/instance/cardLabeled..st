as yet unclassified
cardLabeled: aJsonObject

	^ {
		'action' -> #label.
		'id' -> ((aJsonObject at: 'issue') at: 'number').
		'label' -> (aJsonObject at: 'label').
	} asDictionary.