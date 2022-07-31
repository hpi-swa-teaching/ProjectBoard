tests
testTitle

	| testString |
	testString := 'hi squeak test!'.

	self assert: '' equals: card title.
	card title: testString.
	self assert: testString equals: card title.