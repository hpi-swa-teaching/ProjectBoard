tests
testNewFrom

	| json jsonLane |
	json := Json readFromString: '{"name": "test lane", "id": "123456789"}'.
	
	jsonLane := SPBLane newFrom: json.
	
	self assert: 'test lane' equals: jsonLane title.
	self assert: '123456789' equals: jsonLane id.