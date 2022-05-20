as yet unclassified
newWith: anObserver

	| field |
	field := self new.
	field observer: anObserver.
	
	^ field.