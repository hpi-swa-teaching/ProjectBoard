testing
testBoardToJson

	| json columns |
	json := self defaultBoard asJson.
	self assert: 'test board' equals: (json at: 'title').
	self assert: (json at: 'currentID') equals: 2.
	columns := json at: 'columns'.
	self assert: columns keys isCollection.
	self assert: ((columns at: 88888888) at: 'name') equals: 'this is the second column'.
	self assert: ((columns at: 8008531) at: 'name') equals: 'here is a column title'.