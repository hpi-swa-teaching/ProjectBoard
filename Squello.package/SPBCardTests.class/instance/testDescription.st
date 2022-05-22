tests
testDescription

	| testString |
	testString := 'hi squeak test!'.

	self assert: '' equals: card description.
	card description: testString.
	self assert: testString equals: card description.