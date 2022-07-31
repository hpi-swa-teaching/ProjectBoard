card changes
cardLabeled: aJsonObject

	^ Dictionary newFrom: {
		'action' -> #label.
		'id' -> ((aJsonObject at: 'issue') at: 'number').
		'label' -> (aJsonObject at: 'label').
	}.