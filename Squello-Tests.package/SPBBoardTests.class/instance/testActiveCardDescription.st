as yet unclassified
testActiveCardDescription

	| description |
	self assert: '' equals: board activeCardDescription.
	
	board activeCard: SPBCard new.
	self assert: '' equals: board activeCardDescription.
	
	description := 'hello squeak'.
	board activeCard description: description.
	self assert: description equals: board activeCardDescription.