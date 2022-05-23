tests
testColor

	self assert: nil equals: label color.
	label color: Color green.
	self assert: Color green equals: label color.