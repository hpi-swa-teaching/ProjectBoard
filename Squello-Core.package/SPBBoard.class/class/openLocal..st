local-boards
openLocal: aString
	
	| localFile provider |
	localFile := SPBBoardSaver defaultSaver load: aString.
	localFile
		ifNil: [provider := SPBLocalBoardProvider newWithName: aString]
		ifNotNil: [provider := SPBLocalBoardProvider withJson: localFile].
	^ self newLocalWith: provider.