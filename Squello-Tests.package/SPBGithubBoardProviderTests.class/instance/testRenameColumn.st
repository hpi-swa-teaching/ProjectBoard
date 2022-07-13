tests
testRenameColumn

	| lane |
	lane := SPBLane new title: 'lane lane lane'.
	
	provider renameColumn: lane to: 'toller neuer Name'.
	self assert: 'toller neuer Name' equals: provider api messages first.