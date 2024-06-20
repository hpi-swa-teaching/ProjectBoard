columns
queryColumns

	| column columnsJson |
	self columnFieldId: self queryColumnFieldId.
	columnsJson := self api queryColumns: self projectId.
	^ (columnsJson collect: [:each | column := SPBColumn newFrom: each. column boardProvider: self]) asOrderedCollection.