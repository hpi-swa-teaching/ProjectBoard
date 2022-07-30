tests
testRenameColumn

	| column |
	column := SPBColumn new title: 'lane lane lane'.
	
	provider renameColumn: column to: 'toller neuer Name'.
	self assert: 'toller neuer Name' equals: provider api messages first.