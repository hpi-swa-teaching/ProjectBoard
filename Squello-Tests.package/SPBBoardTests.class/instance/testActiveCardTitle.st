as yet unclassified
testActiveCardTitle

	| title |
	self assert: '' equals: board activeCardTitle.
	
	board activeCard: SPBCard new.
	self assert: '' equals: board activeCardTitle.
	
	title := 'Hi squeak'.
	board activeCard title: title.
	self assert: title equals: board activeCardTitle.