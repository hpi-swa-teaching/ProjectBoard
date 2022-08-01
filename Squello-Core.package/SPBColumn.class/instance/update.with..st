updating
update: aSymbol with: aDictionary

	| cardJson |
	aSymbol = #column 
		ifFalse: [^ self].
	(self id = (aDictionary at: 'id')) 
		ifFalse: [^ self].
	
	((aDictionary at: 'action') = #move)
		ifTrue: [((aDictionary at: 'after') isNil)
			ifTrue: [self changeIndexOfColumn: 1]
			ifFalse: [self changeIndexOfColumn: 
				(self board columns 
					indexOf: (self board columns 
						detect: [:column | column id = (aDictionary at: 'after')])) + 1]].
			
	((aDictionary at: 'action') = #delete) 
		ifTrue: [self board columns remove: self.
			self board updateColumns].
		
	((aDictionary at: 'action') = #edit)
		ifTrue: [self title: (aDictionary at: 'title')].
	
	((aDictionary at: 'action') = #create) 
		ifTrue: [cardJson := self fetchSingleCard: (aDictionary at: 'card').
			self buildSingleCard: cardJson].