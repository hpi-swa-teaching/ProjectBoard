tests-assignees
testListPossibleAssignees
	
	| assignees |
	assignees := provider listPossibleAssignees.
	self assert: assignees isCollection.
	self assert: assignees first isAssignee.
	self assert: assignees first username equals: 'fish'.
	self assert: assignees first id equals: '42'.
	self assert: assignees second username equals: 'cat'.
	self assert: assignees second id equals: '69'.