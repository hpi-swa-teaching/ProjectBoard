tests
testTitle

	| testString |
	testString := 'hi squeak test!'.

	self assert: nil equals: card title.
	card title: testString.
	self assert: testString equals: card title.