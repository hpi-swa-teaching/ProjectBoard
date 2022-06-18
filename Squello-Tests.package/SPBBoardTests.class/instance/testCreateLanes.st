as yet unclassified
testCreateLanes

	| columns |
	board createLanes.
	columns := provider queryColumns.
	self assert: columns equals: board lanes.