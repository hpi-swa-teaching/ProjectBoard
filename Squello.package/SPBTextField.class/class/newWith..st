as yet unclassified
newWith: anObserver

	| instance |
	instance := self new.
	instance observer: anObserver.
	
	^ instance.