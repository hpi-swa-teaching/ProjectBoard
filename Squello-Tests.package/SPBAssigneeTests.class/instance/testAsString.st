tests
testAsString

	self assert: nil equals: assignee asString.
	assignee username: 'octocat'.
	self assert: 'octocat' equals: assignee asString.