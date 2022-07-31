creation
changeIndexOfColumn: aNumber

	| index columns |
	columns := self board columns.
	index := columns indexOf: self.
	
	index = aNumber 
		ifTrue: [^ self]. 
	index < aNumber 
		ifTrue: [columns 
						removeAt: index;
						add: self beforeIndex: aNumber - 1]
		ifFalse: [columns
						removeAt: index;
						add: self beforeIndex: aNumber].
	self board updateColumnsWithCards.