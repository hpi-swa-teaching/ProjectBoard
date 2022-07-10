as yet unclassified
update: aSymbol with: aDictionary

	| cardJson |
	aSymbol = #lane ifFalse: [^ self].
	(self id = (aDictionary at: 'id')) ifFalse: [^ self].
	
	((aDictionary at: 'action') = #move) ifTrue: 
		[((aDictionary at: 'after') = nil)
		ifTrue: [self changeIndexOfLane: 1]
		ifFalse: [self changeIndexOfLane: (self board lanes indexOf: (self board lanes detect: [:lane | lane id = (aDictionary at: 'after')])) + 1]].
	((aDictionary at: 'action') = #delete) ifTrue: 
		[self board lanes remove: self.
		self board updateLanesWithCards].
	((aDictionary at: 'action') = #edit) ifTrue: 
		[self title: (aDictionary at: 'title')].
	
	((aDictionary at: 'action') = #create) ifTrue: 
		[cardJson := self fetchSingleCard: (aDictionary at: 'card').
		self buildSingleCard: cardJson].