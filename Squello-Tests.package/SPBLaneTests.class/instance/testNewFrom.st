tests
testNewFrom

	| json jsonColumn |
	json := Json readFromString: '{"name": "test lane", "id": "123456789"}'.
	
	jsonColumn := SPBColumn newFrom: json.
	
	self assert: 'test lane' equals: jsonColumn title.
	self assert: '123456789' equals: jsonColumn id.