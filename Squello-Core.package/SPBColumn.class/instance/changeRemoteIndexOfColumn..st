creation
changeRemoteIndexOfColumn: aNumber

	| columns |
	columns := self board columns.
	aNumber = 1 
		ifTrue: [self boardProvider moveColumnToFront: self] 
		ifFalse: [self boardProvider moveColumn: self after: (columns at: (columns indexOf: self) - 1)].
