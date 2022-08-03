updating
addColumnLocal: anSPBColumn

	anSPBColumn
		board: self;
		boardProvider: self boardProvider;
		changeProvider: self changeProvider.
	self columns add: anSPBColumn.
	self updateColumns.