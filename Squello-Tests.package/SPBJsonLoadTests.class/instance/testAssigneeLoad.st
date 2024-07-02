testing
testAssigneeLoad

	| json assignee |
	json := '{"login": "username", "id": 1234}' parseAsJson.
	assignee := SPBAssignee newFrom: json.
	self assert: assignee username = 'username'.
	self assert: assignee id = 1234.