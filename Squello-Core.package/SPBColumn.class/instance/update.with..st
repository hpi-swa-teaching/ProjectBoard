updating
update: aSymbol with: aDictionary

	aSymbol = #column 
		ifFalse: [^ self.].
	(self id = (aDictionary at: 'id')) 
		ifFalse: [^ self.].
	
	((aDictionary at: 'action') = #move)
		ifTrue: [((aDictionary at: 'after') isNil)
			ifTrue: [self changeIndexOfColumn: 1]
			ifFalse: [self changeIndexOfColumn: 
				(self board indexOfColumn: (aDictionary at: 'after')) + 1]].
			
	((aDictionary at: 'action') = #delete) 
		ifTrue: [self board removeColumn: self].
		
	((aDictionary at: 'action') = #edit)
		ifTrue: [self title: (aDictionary at: 'title')].
	
	((aDictionary at: 'action') = #create) 
		ifTrue: [self fetchAndBuildSingleCard: (aDictionary at: 'card')].