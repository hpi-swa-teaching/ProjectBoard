dropping/grabbing
wantsToBeDroppedInto: aMorph

	| columnIndex model |
	aMorph isColumn
		ifFalse: [^ false].
	
	model := aMorph actionModel.
	columnIndex := model board columns indexOf: model.
	self sourceColumn changeIndexOfColumn: columnIndex.
	self sourceColumn changeRemoteIndexOfColumn: columnIndex.
	
	^ false.