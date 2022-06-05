tests
testHash

	| id |
	id := 123456789.
	self assert: 256 equals: label hash.
	label id: id.
	self assert:  123456789 equals: label hash.