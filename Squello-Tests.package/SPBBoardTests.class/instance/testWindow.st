as yet unclassified
testWindow

	| window |
	
	window := PluggableSystemWindow new.
	board window: window.
	
	self assert: window equals: board window.