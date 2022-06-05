as yet unclassified
newFrom: aJsonObject

	| instance |
	instance := self new.
	instance 
		title: (aJsonObject at: 'name');
		id: (aJsonObject at: 'id');
		color: (aJsonObject at: 'color');
		description: (aJsonObject at: 'description').
		
	^ instance.