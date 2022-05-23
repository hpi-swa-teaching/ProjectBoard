as yet unclassified
testTitle

	| title |
	title := 'a fancy label'.
	self assert: nil equals: label title.
	label title: title.
	self assert: title equals: label title.