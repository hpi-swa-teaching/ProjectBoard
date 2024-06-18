tests
testAssigneeUpdateString

	| coll str |
	coll := {'first'. 'second'. 'third'}.
	str := provider getAssigneeString: coll asOrderedCollection.
	self assert: str = '\"first\", \"second\", \"third\"'.