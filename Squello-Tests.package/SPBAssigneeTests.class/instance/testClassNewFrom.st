tests
testClassNewFrom

	| json instance |
	json := '{"login": "octocat", "id": 42}' parseAsJson.
	
	instance := SPBAssignee newFrom: json.
	self assert: 'octocat' equals: instance username.
	self assert: 42 equals: instance id.