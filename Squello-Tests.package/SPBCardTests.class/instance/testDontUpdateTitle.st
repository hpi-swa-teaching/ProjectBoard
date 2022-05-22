tests
testDontUpdateTitle

	| testString |
	testString := 'hi squeak test!'.

	card title: testString.
	card updateTitle: testString.
	self assert: testString equals: card title.
	self assert: nil equals: provider card.