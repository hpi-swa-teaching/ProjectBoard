building
createColumns

	self columns: self boardProvider queryColumns.
	self columns
		do: [:column | column changeProvider: self changeProvider].