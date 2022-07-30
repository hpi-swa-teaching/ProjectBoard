as yet unclassified
testCreateLanes

	| columns |
	board createColumns.
	columns := provider queryColumns.
	self assert: columns equals: board columns.