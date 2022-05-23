as yet unclassified
testDescription

	| description |
	description := 'a fancy label'.
	self assert: nil equals: label description.
	label description: description.
	self assert: description equals: label description.