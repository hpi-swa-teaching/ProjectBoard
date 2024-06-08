startup
openLocal: aString
	
	| localFile |
	localFile := SPBBoardSaver defaultSaver load: aString.
	localFile ifNotNil: [:file|^ file buildAndOpen].
	^ self newLocalWith: aString.