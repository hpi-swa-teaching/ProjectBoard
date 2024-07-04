testing
testAssigneeToJson

	| json |
	json := self defaultAssignee asJson.
	self assert: 'your cat' = (json at: 'login').
	self assert: 1234 = (json at: 'id').