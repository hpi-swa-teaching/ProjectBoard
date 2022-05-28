tests
testEquals

	self setUpExtended.

	self assert: assignee = assignee.
	self assert: assignee = assignee veryDeepCopy.
	self assert: assignee veryDeepCopy = assignee.