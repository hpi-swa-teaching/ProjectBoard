tests-columns
testCreateColumn

	| response |
	response := provider createColumn: #test.
	self assert: response.
	
