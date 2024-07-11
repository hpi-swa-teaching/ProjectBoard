tests-columns
testMoveColumnToFront

	| response |
	response := provider moveColumnToFront: #test.
	self assert: response.