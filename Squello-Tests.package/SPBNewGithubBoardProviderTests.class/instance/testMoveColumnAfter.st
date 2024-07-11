tests-columns
testMoveColumnAfter

	| response |
	response := provider moveColumn: #test after: nil.
	self assert: response.