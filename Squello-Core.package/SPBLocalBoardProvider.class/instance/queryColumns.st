columns
queryColumns

	self board ifNotNil: [:board| ^ board columns].
	^ self defaultColumns.