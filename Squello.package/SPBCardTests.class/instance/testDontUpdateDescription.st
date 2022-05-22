tests
testDontUpdateDescription

	| testString |
	testString := 'hi squeak test!'.

	card description: testString.
	card updateDescription: testString.
	self assert: testString equals: card description.
	self assert: nil equals: provider card.