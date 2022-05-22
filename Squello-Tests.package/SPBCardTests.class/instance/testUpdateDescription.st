tests
testUpdateDescription

	| testString |
	testString := 'hi squeak test!'.

	card updateDescription: testString.
	self assert: testString equals: card description.
	self assert: testString equals: provider card description.