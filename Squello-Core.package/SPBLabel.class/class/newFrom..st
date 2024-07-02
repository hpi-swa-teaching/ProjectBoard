as yet unclassified
newFrom: aJsonObject

	| instance |
	instance := self new.
	instance 
		title: (aJsonObject at: 'title');
		id: (aJsonObject at: 'id');
		color: (Color fromString: (aJsonObject at: 'color')).
	^ instance.