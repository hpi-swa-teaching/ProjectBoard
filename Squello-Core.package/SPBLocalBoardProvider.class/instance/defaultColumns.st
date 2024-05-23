defaults
defaultColumns

	^ { (SPBColumn newWithTitle: 'ToDo' id: 1) boardProvider: self; yourself.
		(SPBColumn newWithTitle: 'InProgress' id: 2) boardProvider: self; yourself.
		(SPBColumn newWithTitle: 'Done' id: 3) boardProvider: self; yourself.
		} asOrderedCollection.