as yet unclassified
testConstructor

	| constructor |
	
	constructor := Object new.
	board constructor: constructor.
	
	self assert: constructor equals: board constructor.