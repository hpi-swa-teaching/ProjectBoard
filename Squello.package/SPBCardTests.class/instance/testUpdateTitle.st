tests
testUpdateTitle

	| testString |
	testString := 'hi squeak test!'.

	card updateTitle: testString.
	self assert: testString equals: card title.
	self assert: testString equals: provider card title.