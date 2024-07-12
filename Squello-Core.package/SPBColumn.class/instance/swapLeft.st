creation
swapLeft

	|columns index|
	columns := self board columns.
	index := columns indexOf: self.

	index = 1
		ifTrue:[^self.]
		ifFalse:[self changeIndexOfColumn: index-1.
				self changeRemoteIndexOfColumn: index-1].	
	self board updateColumns