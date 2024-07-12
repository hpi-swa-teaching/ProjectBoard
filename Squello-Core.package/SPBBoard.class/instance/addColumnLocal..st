updating
addColumnLocal: anSPBColumn

	anSPBColumn
		board: self;
		boardProvider: self boardProvider.
	self columns add: anSPBColumn.
	self updateColumns.