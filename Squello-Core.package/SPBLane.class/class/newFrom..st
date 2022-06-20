instance creation
newFrom: aJsonObject

	| instance title |
	instance := self new.
	title := aJsonObject at: 'name'.
	instance title: title.
	instance id: (aJsonObject at: 'id').
	
	^ instance.