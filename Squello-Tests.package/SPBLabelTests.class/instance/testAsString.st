tests
testAsString

	| title |
	title := 'a fancy label'.
	self assert: nil equals: label asString.
	label title: title.
	self assert: title equals: label asString.