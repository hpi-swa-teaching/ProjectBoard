testing
testBoardToJson

	| json |
	json := self defaultBoard asJson.
	self assert: 'test board' equals: (json at: 'title').
	self assert: (json at: 'columns') isCollection.
	self assert: ((json at: 'columns') first at: 'id') equals: 8008531.
	self assert: ((json at: 'columns') second at: 'id') equals: 88888888.