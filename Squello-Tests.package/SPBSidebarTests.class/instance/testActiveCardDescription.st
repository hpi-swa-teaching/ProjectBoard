as yet unclassified
testActiveCardDescription

	| description |
	self assert: '' equals: sidebar activeCardDescription.
	
	sidebar activeCard: SPBCard new.
	self assert: '' equals: sidebar activeCardDescription.
	
	description := 'hello squeak'.
	sidebar activeCard description: description.
	self assert: description equals: sidebar activeCardDescription.