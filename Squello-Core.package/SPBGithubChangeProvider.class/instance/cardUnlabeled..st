as yet unclassified
cardUnlabeled: aJsonObject

	^ Dictionary newFrom: {
		'action' -> #unlabel.
		'id' -> ((aJsonObject at: 'issue') at: 'number').
		'label' -> (aJsonObject at: 'label').
	}.