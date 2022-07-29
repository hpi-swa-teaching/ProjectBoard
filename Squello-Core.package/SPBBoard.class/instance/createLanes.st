toolbuilder
createLanes

	self lanes: self boardProvider queryColumns.
	(self lanes)
		do: [:lane | lane changeProvider: self changeProvider].