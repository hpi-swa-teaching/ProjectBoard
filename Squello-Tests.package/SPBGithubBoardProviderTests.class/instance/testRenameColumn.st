tests
testRenameColumn

	| lane response |
	lane := SPBLane new title: 'lane lane lane'.
	
	response := provider renameColumn: lane to: 'toller neuer Name'.
	self assert: 'toller neuer Name' equals: (response at: 'name').
	
	
	
	
	