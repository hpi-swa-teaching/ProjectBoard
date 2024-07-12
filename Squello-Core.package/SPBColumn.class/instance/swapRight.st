creation
swapRight

	|columns index size|
	columns := self board columns.
	index := columns indexOf: self.
	size := columns size.

	index = size
		ifTrue:[^self.]
		ifFalse:[self changeIndexOfColumn: index+1.
				self changeRemoteIndexOfColumn: index+1].	
	self board updateColumns