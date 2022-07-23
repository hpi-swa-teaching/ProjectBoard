as yet unclassified
newFrom: aJsonObject

	| instance |
	instance := self new.
	instance 
		username: (aJsonObject at: 'login');
		id: (aJsonObject at: 'id').
		
	^ instance.