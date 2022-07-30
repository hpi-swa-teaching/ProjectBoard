creation
changeIndexOfColumn: aNumber

	| index columns newIndex |
	columns := self board columns.
	index := columns indexOf: self.
	
	index = aNumber 
		ifTrue: [^ self]. 
	index < aNumber 
		ifTrue: [newIndex := aNumber - 1.
			columns 
				removeAt: index;
				add: self beforeIndex: aNumber - 1]
		ifFalse: [newIndex := aNumber.
			columns
				removeAt: index;
				add: self beforeIndex: aNumber].
	self board updateColumnsWithCards.