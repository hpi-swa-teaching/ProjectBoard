tests
testClassNewFrom

	| json instance |
	json := '{"login": "octocat", "id": 42, "avatar_url": "github.com/bla"}' parseAsJson.
	
	instance := SPBAssignee newFrom: json.
	self assert: 'octocat' equals: instance username.
	self assert: 42 equals: instance id.
	self assert: 'github.com/bla' equals: instance avatar.