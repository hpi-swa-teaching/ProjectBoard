accessing
buildCard: aJsonObject
	
	(aJsonObject at: 'content_url') 
		ifNotNil: [:aString| self buildContent: aString] 
		ifNil: [self buildNote: aJsonObject].