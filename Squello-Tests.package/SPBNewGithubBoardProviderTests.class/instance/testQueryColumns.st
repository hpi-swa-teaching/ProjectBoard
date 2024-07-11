tests-columns
testQueryColumns

	| response |
	response := provider queryColumns.
	self assert: response isCollection.
	self assert: response size equals: 3.
	self assert: response first isColumn.
	self assert: response first id equals: '1'.
	self assert: response first title equals: 'Todo'.