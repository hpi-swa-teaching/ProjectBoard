toolbuilder
createLanes

	self lanes: self provider queryColumns.
	(self lanes)
		do: [:lane | lane changeProvider: self changeProvider].