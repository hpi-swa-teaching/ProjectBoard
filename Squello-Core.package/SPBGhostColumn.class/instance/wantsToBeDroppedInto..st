dropping/grabbing
wantsToBeDroppedInto: aMorph

	| columnIndex center model |
	aMorph isColumn
		ifFalse: [^ false].
	
	model := aMorph actionModel.
	columnIndex := model board columns indexOf: model.
	center := aMorph positionInWorld x + (aMorph width // 2).
	self position x > center 
		ifTrue: [self sourceColumn changeIndexOfColumn: columnIndex + 1.
			self sourceColumn changeRemoteIndexOfColumn: columnIndex + 1]
		 ifFalse: [self sourceColumn changeIndexOfColumn: columnIndex.
			self sourceColumn changeRemoteIndexOfColumn: columnIndex].
	
	^ false.