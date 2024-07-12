building
createColumns

	self columns: self boardProvider queryColumns asOrderedCollection.
	self columns
		do: [:column | column changeProvider: self changeProvider].