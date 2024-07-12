creation
changeIndexOfColumn: aNumber

	| index columns |
	columns := self board columns.
	index := columns indexOf: self.
	
	index = aNumber 
		ifTrue: [^ self.]. 
	columns 
		removeAt: index;
		add: self beforeIndex: aNumber.
	self board updateColumns.