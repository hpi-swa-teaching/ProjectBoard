tests
testNotEquals

	| compareWith |
	compareWith := Object new.
	self setUpExtended.
	
	self deny: assignee = compareWith.
	self deny: assignee = compareWith veryDeepCopy.
	self deny: assignee veryDeepCopy = compareWith.
	
	compareWith := SPBAssignee new.
	compareWith
		id: 43;
		username: 'hi-squeak'.
		
	self deny: assignee = compareWith.