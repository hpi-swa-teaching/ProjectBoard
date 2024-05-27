startup
openLocal: aString
	
	| localFile |
	localFile := SPBBoardSaver load: aString.
	localFile ifNotNil: [:file|^ file window openInWorld].
	^ self newLocalWith: aString.