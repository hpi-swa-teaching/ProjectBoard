startup
openLocal: aString
	
	| localFile |
	localFile := SPBBoardSaver defaultSaver load: aString.
	localFile ifNotNil: [:file|^ file window openInWorld].
	^ self newLocalWith: aString.