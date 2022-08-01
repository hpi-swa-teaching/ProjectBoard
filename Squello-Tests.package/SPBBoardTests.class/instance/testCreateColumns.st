as yet unclassified
testCreateColumns

	| columns |
	board createColumns.
	columns := provider queryColumns.
	self assert: columns equals: board columns.