tests
testIssueId

	self assert: nil equals: card issueId.
	card issueId: 42.
	self assert: 42 equals: card issueId.