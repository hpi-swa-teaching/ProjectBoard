as yet unclassified
testActiveCardTitle

	| title |
	self assert: '' equals: sidebar activeCardTitle.
	
	sidebar activeCard: SPBCard new.
	self assert: '' equals: sidebar activeCardTitle.
	
	title := 'Hi squeak'.
	sidebar activeCard title: title.
	self assert: title equals: sidebar activeCardTitle.