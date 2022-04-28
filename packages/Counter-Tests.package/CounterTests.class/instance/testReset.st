tests
testReset

	counter 
		increment;
		reset.
	self assert: 1 equals: counter currentValue.